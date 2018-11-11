---
ns: HUD
aliases: ["_ADD_TEXT_COMPONENT_STRING"]
---
## ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME

```c
// 0x6C188BE134E074AA 0x27A244D8
void ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(char* text);
```

Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.

See the documentation on text formatting for more information.

## Parameters
* **text**: A string to add of up to 99 characters. This can contain additional `~` formatting directives.

## Examples
```lua
-- on initialization
AddTextEntry('TEST_LABEL', 'Label: ~a~')

-- when drawing
BeginTextCommandDisplayText('TEST_LABEL')
AddTextComponentSubstringPlayerName('Hello, World!')
EndTextCommandDisplayText(0.5, 0.5)
```