---
ns: HUD
aliases: ["_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2"]
---
## END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON

```c
// 0x531B84E7DA981FB6 0xDEB491C8
int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON(char* picTxd, char* picTxn, BOOL flash, int iconType1, char* nameStr, char* subtitleStr, float duration, char* crewPackedStr, int iconType2, int textColor);
```

```
List of picNames: pastebin.com/XdpJVbHz  
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
iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
int IconNotification(char *text, char *text2, char *Subject)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```

## Parameters
* **picTxd**: 
* **picTxn**: 
* **flash**: 
* **iconType1**: 
* **nameStr**: 
* **subtitleStr**: 
* **duration**: 
* **crewPackedStr**: 
* **iconType2**: 
* **textColor**: 

## Return value
