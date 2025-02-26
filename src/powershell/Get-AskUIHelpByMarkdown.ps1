[CmdletBinding()]
param (
    [Parameter(Mandatory = $True)]
    [string]$Name
)

function EncodePartOfHtml
{
    param ([string]$Value)
    ($Value -replace '<', '&lt;') -replace '>', '&gt;'
}

function FormatDescription
{
    param ($HelpContent)
    if (-not $($HelpContent.description | Out-String | ForEach-Object { $_.Trim() }))
    {
        return ''
    }
    return @"
### DESCRIPTION

$($HelpContent.description | Out-String | ForEach-Object { $_.Trim() })
"@
}

function FormatSynopsis
{
    param ($HelpContent)
    return @"
### SYNOPSIS

$((($HelpContent.Synopsis | Out-String) -replace "`r`n", "`r`n`r`n").Trim())
"@
}

function FormatSyntax
{
    param ($HelpContent)
    return @"
### SYNTAX

$($HelpContent.SYNTAX.syntaxItem | ForEach-Object {
    return @"

``````powershell
    $($_.name) $($_.parameter | ForEach-Object { "-$($_.name)" })
``````

"@
    
     })
"@
}

function FormatParameters
{
    param ($Parameters)
    if ($Parameters)
    {
        return @'
### PARAMETERS

'@ + ($Parameters | ForEach-Object {
                "
- ``-$($_.name)`` $(if ($_.type.name -ne 'switch') { "| _&lt;$($_.type.name)&gt;_" }) - $(($_.description | Out-String).Trim())"
            })
    }
    return ''
}

function FormatNotes
{
    param ($HelpContent)
    if ($HelpContent.alertSet -and $HelpContent.alertSet.alert)
    {
        return @"
### NOTES

$($HelpContent.alertSet.alert | Out-String | ForEach-Object { $_.Trim() })
"@
    }
    return ''
}

function ExtractCode
{
    param ($Example)
    return ($Example.code | Out-String).Trim()
}

function FormatExamples
{
    param ($Examples)
    if ($Examples)
    {
        return @'
### EXAMPLES

'@ + ($Examples | ForEach-Object {
                @"

#### $($_.title -replace '-*', '' | ForEach-Object { $_.Trim() })

``````powershell
$(ExtractCode $_)
``````

"@
            })
    }
}

function GenerateMarkdown
{
    param ($HelpContent)

    $mdContent = @"
---
title: $Name
---

# $Name

"@

    $synopsisContent = $(FormatSynopsis $HelpContent)
    if ($synopsisContent)
    {
        $mdContent += "`n" + $synopsisContent + "`n" 
    }

    $descriptionContent = $(FormatDescription $HelpContent)
    if ($descriptionContent)
    {
        $mdContent += "`n" + $descriptionContent + "`n" 
    }

    $parametersContent = $(FormatParameters $HelpContent.parameters.parameter)
    if ($parametersContent)
    {
        $mdContent += "`n" + $parametersContent + "`n" 
    }

    $notesContent = $(FormatNotes $HelpContent)
    if ($notesContent)
    {
        $mdContent += "`n" + $notesContent + "`n" 
    }

    $examplesContent = $(FormatExamples $HelpContent.examples.example)
    if ($examplesContent)
    {
        $mdContent += "`n" + $examplesContent 
    }

    return $mdContent
}


try
{
    if ($Host.UI.RawUI)
    {
        $rawUI = $Host.UI.RawUI
        $oldSize = $rawUI.BufferSize
        $newSize = New-Object $oldSize.GetType().FullName (500, $oldSize.Height)
        $rawUI.BufferSize = $newSize
    }
    
    $fullHelp = Get-Help $Name -Full
    return GenerateMarkdown $fullHelp
}
finally
{
    if ($Host.UI.RawUI)
    {
        $Host.UI.RawUI.BufferSize = $oldSize
    }
}
