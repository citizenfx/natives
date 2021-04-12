---
ns: HUD
aliases: ["_SET_NOTIFICATION_TEXT_ENTRY"]
---
## BEGIN_TEXT_COMMAND_THEFEED_POST

```c
// 0x202709F4C58A0424 0x574EE85C
void BEGIN_TEXT_COMMAND_THEFEED_POST(char* text);
```

Declares the entry type of a notification, for example "STRING".
int ShowNotification(char *text)
{
	BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
	return _DRAW_NOTIFICATION(1, 1);
}

## Parameters
* **text**: The text label to use.

## Examples
```lua
BeginTextCommandThefeedPost("STRING")
AddTextComponentSubstringPlayerName("Hello " .. GetPlayerName(PlayerId()) .. ".")
EndTextCommandThefeedPostTicker(true, true)
```

