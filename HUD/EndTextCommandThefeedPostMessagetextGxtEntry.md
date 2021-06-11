---
ns: HUD
aliases: ["0xC6F580E4C94926AC","_SET_NOTIFICATION_MESSAGE_3","_END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_ENTRY"]
---
## _END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_GXT_ENTRY

```c
// 0xC6F580E4C94926AC
int _END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_GXT_ENTRY(char* txdName, char* textureName, BOOL flash, int iconType, char* sender, char* subject);
```

This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.
Needs more research.
Only one type of usage in the scripts:
HUD::_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a_0);

## Parameters
* **txdName**: 
* **textureName**: 
* **flash**: 
* **iconType**: 
* **sender**: 
* **subject**: 

## Return value
