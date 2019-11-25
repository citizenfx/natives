---
ns: HUD
aliases: ["_SET_NOTIFICATION_MESSAGE_CLAN_TAG"]
---
## END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG

```c
// 0x5CBF7BADE20DB93E 0x3E807FE3
int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG(char* picTxd, char* picTxn, BOOL flash, int iconType, char* nameStr, char* subtitleStr, float duration, char* crewPackedStr);
```

```
List of picNames pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
```

## Parameters
* **picTxd**: 
* **picTxn**: 
* **flash**: 
* **iconType**: 
* **nameStr**: 
* **subtitleStr**: 
* **duration**: 
* **crewPackedStr**: 

## Return value
