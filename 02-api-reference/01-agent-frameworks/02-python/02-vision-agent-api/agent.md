---
title: Agent
---

<a id="askui.agent"></a>

# askui.agent

<a id="askui.agent.VisionAgent"></a>

## VisionAgent Objects

```python
class VisionAgent()
```

<a id="askui.agent.VisionAgent.click"></a>

#### click

```python
def click(instruction: Optional[str] = None,
          button: Literal['left', 'middle', 'right'] = 'left',
          repeat: int = 1,
          model_name: Optional[str] = None) -> None
```

Simulates a mouse click on the user interface element identified by the provided instruction.

**Arguments**:

- `instruction` _str | None_ - The identifier or description of the element to click.
- `button` _'left' | 'middle' | 'right'_ - Specifies which mouse button to click. Defaults to 'left'.
- `repeat` _int_ - The number of times to click. Must be greater than 0. Defaults to 1.
- `model_name` _str | None_ - The model name to be used for element detection. Optional.
  

**Raises**:

- `InvalidParameterError` - If the 'repeat' parameter is less than 1.
  

**Example**:

  >>> with VisionAgent() as agent:
  >>>     agent.click()              # Left click on current position
  >>>     agent.click("Edit")        # Left click on text "Edit"
  >>>     agent.click("Edit", button=right)  # Left click on text "Edit"
  >>>     agent.click(repeat=2)      # Double left click on current position
  >>>     agent.click("Edit", button="middle", repeat=4)   # 4x middle click on text "edit

<a id="askui.agent.VisionAgent.wait"></a>

#### wait

```python
@validate_call
def wait(sec: Annotated[float, Field(gt=0)])
```

Pauses the execution of the program for the specified number of seconds.

**Arguments**:

- `sec` _float_ - The number of seconds to wait. Must be greater than 0.
  

**Raises**:

- `ValueError` - If the provided `sec` is negative.
  

**Example**:

  >>> with VisionAgent() agent:
  >>>     agent.wait(5)  # Pauses execution for 5 seconds.
  >>>     agent.wait(0.5)  # Pauses execution for 500 milliseconds.

<a id="askui.agent.VisionAgent.key_up"></a>

#### key\_up

```python
def key_up(key: PC_AND_MODIFIER_KEY)
```

Simulates the release of a key.

**Arguments**:

- `key` _PC_AND_MODIFIER_KEY_ - The key to be released. This can be any key or a combination of keys with modifiers.
  

**Example**:

  This example demonstrates how to simulate the release of the 'a' key and the 'shift' key:
  
  >>> agent.key_up('a')  # Release the 'a' key.
  >>> agent.key_up('shift')  # Release the 'shift' key.

<a id="askui.agent.VisionAgent.key_down"></a>

#### key\_down

```python
def key_down(key: PC_AND_MODIFIER_KEY)
```

Simulates the pressing of a key.

**Arguments**:

- `key` _PC_AND_MODIFIER_KEY_ - The key to be pressed. This can be any key or a combination of keys with modifiers.
  

**Example**:

  >>> agent.key_down('a')  # Press the 'a' key.
  >>> agent.key_down('shift')  # Press the 'Shift' key.

