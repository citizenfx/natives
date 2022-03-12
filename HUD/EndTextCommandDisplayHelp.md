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
* **shape**: 0 for a normal rectangle shape, 1-2 has rounded edges.
* **loop**: if this is true, the message will stay forever unless you call ClearHelp
* **beep**: if this is true, the beeping sound will play
* **duration**: duration in ms of how long this help message should display for. -1 for default


## Examples
```lua
-- Help texts support text formatting, check out https://docs.fivem.net/docs/game-references/text-formatting/
AddTextEntry('HelpMsg', 'Press ~INPUT_CONTEXT~ to do something.')

BeginTextCommandDisplayHelp('HelpMsg')
EndTextCommandDisplayHelp(0, false, true, -1)

```
