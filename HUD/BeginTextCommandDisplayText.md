---
ns: HUD
aliases: ["_SET_TEXT_ENTRY"]
---
## BEGIN_TEXT_COMMAND_DISPLAY_TEXT

```c
// 0x25FBB336DF1804CB 0x3E35563E
void BEGIN_TEXT_COMMAND_DISPLAY_TEXT(char* text);
```

Begin a new Text Command.
Add the needed components with [ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME](#_0x6C188BE134E074AA) (and other ADD_TEXT_COMPONENT natives)
The Text components here refer to placeholders, see [content-formatting-codes](https://docs.fivem.net/docs/game-references/text-formatting/#content-formatting-codes)

To add a custom text entry see [ADD_TEXT_ENTRY](#_0x32CA01C3)

For some example label names see [_GET_LABEL_TEXT](#_0x7B5280EBA9840C72).

## Parameters
* **text**: The gxtEntry to use


## Examples

```lua
-- Display text with Text Entry
AddTextEntry("HELLO_WORLD", "Hello World")

SetTextFont(0)
SetTextScale(0.0, 0.30)
BeginTextCommandDisplayText("HELLO_WORLD")
EndTextCommandDisplayText(0.3, 0.3)

-- Display text with substring
SetTextFont(0)
SetTextScale(0.0, 0.30)
BeginTextCommandDisplayText("STRING")
AddTextComponentSubstringPlayerName("Hello World")
EndTextCommandDisplayText(0.3, 0.3)
```
