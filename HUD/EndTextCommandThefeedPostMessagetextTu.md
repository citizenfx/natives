---
ns: HUD
aliases: ["0x1E6611149DB3DB6B","_SET_NOTIFICATION_MESSAGE_4"]
---
## END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU

```c
// 0x1E6611149DB3DB6B 0x0EB382B7
int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU(char* picTxd, char* picTxn, BOOL flash, int iconType, char* nameStr, char* subtitleStr, float duration);
```

NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.


Example, only occurrence in the scripts:

```
v_8 = UI::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
```

Example result:


![](https://i.imgur.com/YrN4Bcm.png)


## Parameters
* **picTxd**: 
* **picTxn**: 
* **flash**: 
* **iconType**: 
* **nameStr**: 
* **subtitleStr**: 
* **duration**: 

## Return value
