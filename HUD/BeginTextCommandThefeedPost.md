---
ns: HUD
aliases: ["_SET_NOTIFICATION_TEXT_ENTRY"]
---
## BEGIN_TEXT_COMMAND_THEFEED_POST

```c
// 0x202709F4C58A0424 0x574EE85C
void BEGIN_TEXT_COMMAND_THEFEED_POST(char* text);
```

Example output preview:


![](https://i.imgur.com/TJvqkYq.png)


## Examples
```lua
BeginTextCommandThefeedPost("STRING")
AddTextComponentSubstringPlayerName("Hello " .. GetPlayerName(PlayerId()) .. ".")
EndTextCommandThefeedPostTicker(true, true)
```

## Parameters
* **text**: The text label to use.

