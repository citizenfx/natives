---
ns: HUD
aliases: ["_DISPLAY_HELP_TEXT_FROM_STRING_LABEL"]
---
## END_TEXT_COMMAND_DISPLAY_HELP

```c
// 0x238FFE5C7B0498A6 0xB59B530D
void END_TEXT_COMMAND_DISPLAY_HELP(int shape, BOOL loop, BOOL beep, int duration);
```


## Parameters
* **shape**: 0 for a normal rectangle shape, 1 and 2 has rounded edges, and can be used for floating help text hud component `FLOATING_HELP_TEXT_1` and `FLOATING_HELP_TEXT_2`. Use 1 for `FLOATING_HELP_TEXT_1` and 2 for `FLOATING_HELP_TEXT_2`, otherwise the help text will be reset to a normal help text on the top left corner on your screen.
* **loop**: If this is true, the message will stay forever unless you call [`CLEAR_ALL_HELP_MESSAGES`](#_0x6178F68A87A4D3A0).
* **beep**: If this is true, the beeping sound will play. Beeping sound name is `INFO` in sound set `HUD_FRONTEND_DEFAULT_SOUNDSET`.
* **duration**: Duration in ms of how long this help message should display for. -1 for default.


## Examples
```lua
-- Help texts support text formatting, check out https://docs.fivem.net/docs/game-references/text-formatting/
AddTextEntry('HelpMsg', 'Press ~INPUT_CONTEXT~ to do something.')

BeginTextCommandDisplayHelp('HelpMsg')
EndTextCommandDisplayHelp(0, false, true, -1)

-- Shows a floating help text which uses FLOATING_HELP_TEXT_1 hud component.
AddTextEntry('FloatingHelpText', 'Press E to show respect.')
SetFloatingHelpTextWorldPosition(0, vector3(100, 100, 100))
SetFloatingHelpTextStyle(0, true, 2, -1, 3, 0)
BeginTextCommandDisplayHelp('FloatingHelpText')
EndTextCommandDisplayHelp(1, false, false, -1)
```
