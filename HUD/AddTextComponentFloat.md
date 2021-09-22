---
ns: HUD
---
## ADD_TEXT_COMPONENT_FLOAT

```c
// 0xE7DCB5B874BCD96E 0x24D78013
void ADD_TEXT_COMPONENT_FLOAT(float value, int decimalPlaces);
```

Adds a float to a text component placeholder, replacing `~1~` in the current text command's text label.

![Example output](https://i.imgur.com/jvuQ0II.png)

## Parameters
* **value**: The number to substitute in the label.
* **decimalPlaces**: How many decimal places to add

## Examples
```lua
-- on initialization
AddTextEntry('TEST_LABEL', 'Label: ~1~')

-- when drawing
BeginTextCommandThefeedPost('TEST_LABEL')
AddTextComponentFloat(1000.0, 2)
EndTextCommandThefeedPostTicker(false, true)
```
