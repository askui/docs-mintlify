$absoluteShellFileName = Join-Path -Path $($ENV:ASKUI_INSTALLATION_DIRECTORY) -ChildPath 'Auxiliary' 'Environment' 'Askui.ps1'
if (-not (Test-Path -Path $absoluteShellFileName))
{
    Write-Error "The AskUI environment file does not exist at the following path: $absoluteShellFileName"
    return
}

[string]$markdownGeneratorFileName = Join-Path -Path $PSScriptRoot -ChildPath 'Get-AskUIHelpByMarkdown.ps1'
if (-not (Test-Path -Path $markdownGeneratorFileName))
{
    Write-Error "The markdown generator file does not exist at the following path: $markdownGeneratorFileName"
    return
}

# Start the AskUI environment
. $absoluteShellFileName

# Load Debug and Experimental modules
AskUI-ImportDebugCommands
AskUI-ImportExperimentalCommands

# Get the module information
$publicModulesInfos = [AskUI.Runtime]::Application.m_extensionCollection.GetModuleInfoByType('Public')
$debugModulesInfos = [AskUI.Runtime]::Application.m_extensionCollection.GetModuleInfoByType('Debug')
$experimentalModulesInfos = [AskUI.Runtime]::Application.m_extensionCollection.GetModuleInfoByType('Experimental')
$absoluteOutputDirectoryName = Join-Path -Path $PSScriptRoot -ChildPath 'out' 'askui-suite'

$moduleInfos = $publicModulesInfos + $debugModulesInfos + $experimentalModulesInfos

# Initialize the JSON structure
$jsonStructure = @{
    group = 'AskUI Suite'
    pages = @()
}

# Create the markdown files and build the JSON structure
foreach ($moduleInfo in $moduleInfos)
{
    [string[]]$moduleAliases = $moduleInfo.ExportedAliases
    [string]$sourceFileName = $moduleInfo.Source
    [string]$absoluteModuleFileName = $moduleInfo.AbsoluteModuleFileName
    [string]$type = $sourceFileName.split('.')[0]

    $absoluteModuleFileNameParentDirectoryName = Split-Path -Path $absoluteModuleFileName -Parent
    $moduleFileNameParentDirectory = Split-Path ($absoluteModuleFileNameParentDirectoryName) -Leaf

    $componentName = 'ADE'
    if ($moduleFileNameParentDirectory -eq 'Commandlet')
    {
        $componentName = Split-Path (Split-Path -Path $absoluteModuleFileNameParentDirectoryName -Parent) -Leaf
    }

    # Build the path for the alias
    foreach ($moduleAlias in $moduleAliases)
    {
        if (-not $pages -contains "$componentName/$type/$($moduleAlias)")
        {
            # Output markdown file creation
            [string]$outputFileName = Join-Path -Path $absoluteOutputDirectoryName -ChildPath "$componentName" "$type" "$($moduleAlias).md"
            New-Item -ItemType Directory -Path $(Split-Path -Path $outputFileName -Parent) -Force | Out-Null
            & $markdownGeneratorFileName $moduleAlias | Out-File -FilePath $outputFileName

            # Build the JSON structure
            $pagePath = "02-api-reference/03-agent-environment/askui-suite/$componentName/$type/$moduleAlias"

            # Add or update the JSON structure
            $componentPage = $jsonStructure.pages | Where-Object { $_.group -eq $componentName }
            if ($null -eq $componentPage)
            {
                $componentPage = @{
                    group = $componentName
                    pages = @()
                }
                $jsonStructure.pages += $componentPage
            }

            $typePage = $componentPage.pages | Where-Object { $_.group -eq $type }
            if ($null -eq $typePage)
            {
                $typePage = @{
                    group = $type
                    pages = @()
                }
                $componentPage.pages += $typePage
            }

            # Add alias directly as a page under the type
            $typePage.pages += $pagePath
        }
    }
}

$jsonStructure.pages = $jsonStructure.pages | Sort-Object { $_.group }

# Define the output file path
$outputFilePath = Join-Path -Path $PSScriptRoot -ChildPath 'out' 'output.json'

# Write the JSON structure to the file
$jsonStructure | ConvertTo-Json  -Depth 100 | Out-File -FilePath $outputFilePath -Force

Write-Host "The markdown files have been generated successfully and are located in the following directory: $absoluteOutputDirectoryName"
Write-Host "JSON structure has been written to '$outputFilePath'"
