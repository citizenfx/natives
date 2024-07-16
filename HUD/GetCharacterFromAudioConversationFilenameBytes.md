---
ns: HUD
aliases: ["0xCE94AEBA5D82908A", "_GET_TEXT_SUBSTRING_SLICE"]
---
## GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES

```c
// 0xCE94AEBA5D82908A 0xFA6373BB
char* GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES(char* text, int startPosition, int endPosition);
```

```
Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).
Example:
// Get "STRING" text from "MY_STRING"
subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);
// Overflows are possibly replaced with underscores (needs verification)
subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?
```

## Parameters
* **text**: 
* **startPosition**: 
* **endPosition**: 

## Return value
