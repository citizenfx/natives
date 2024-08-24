---
ns: HUD
aliases: ["0x1E6611149DB3DB6B","_SET_NOTIFICATION_MESSAGE_4"]
---
## END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU

```c
// 0x1E6611149DB3DB6B 0x0EB382B7
int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU(char* picTxd, char* picTxn, BOOL flash, int iconType, char* nameStr, char* subtitleStr, float durationMultiplier);
```

Example result:
![Image](https://r2.fivemanage.com/qFztShHCe1bhCDvTI4vxv/Screenshot%202024-08-24%20110820.png)

## Parameters
* **picTxd**: 
* **picTxn**: 
* **flash**: 
* **iconType**: The icon type, you can find those here: [`END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT`](#_0x1CCD9A37359072CF)
* **nameStr**: 
* **subtitleStr**: 
* **durationMultiplier**: 1.0 is normal, 2.0 is twice as long, and 0.5 is half its normal display time.

## Return value

## Examples

```lua
BeginTextCommandThefeedPost("jamyfafi")
AddTextComponentSubstringPlayerName("Message")
EndTextCommandThefeedPostMessagetextTu("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", false, 0, GetPlayerName(PlayerId()), "Hello", 1.0)
EndTextCommandThefeedPostTicker(false, true)
```