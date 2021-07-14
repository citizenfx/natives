---
ns: HUD
aliases: ["0x0E4C749FF9DE9CC4"]
---
## ADD_TEXT_COMPONENT_FORMATTED_INTEGER

```c
// 0x0E4C749FF9DE9CC4 0x12929BDF
void ADD_TEXT_COMPONENT_FORMATTED_INTEGER(int value, BOOL commaSeparated);
```


## Parameters
* **value**: The integer to add to the string
* **commaSeparated**: Whether or not to add comma seperators. So if true 1000 would become 1,000.

Adds a formatted integer as a text component placeholder, replacing ~a~ in the current text command's text label.

## Examples
```lua
-- on initialization
AddTextEntry('TEST_LABEL', '€~a~')

-- when drawing
BeginTextCommandThefeedPost('TEST_LABEL')
AddTextComponentFormattedInteger(1000, true)
EndTextCommandThefeedPostTicker(false, true)
```
