---
ns: HUD
aliases: ["_SET_WARNING_MESSAGE_3"]
---
## SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS

```c
// 0x701919482C74B5AB 0x749929D3
void SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS(char* pHeaderTextLabel, char* pLine1TextLabel, int iInstructionalButtonBitField, char* pLine2TextLabel, BOOL bAddNumber, int iNumberToAdd, int iSubstringFlags, cs_type(AnyPtr) char* pFirstSubstring, cs_type(AnyPtr) char* pSecondSubstring, BOOL bBlackBackground);
```

Shows a warning screen for one frame but allows to insert literal strings as substrings.

```
NativeDB Added Parameter 11: int errorCode
```

## Parameters
* **pHeaderTextLabel**: Text label to set the header to. 
* **pLine1TextLabel**: Text label for the first line of the warning message. 
* **iInstructionalButtonBitField**: See [`SET_WARNING_MESSAGE`](#_0x7B1776B3B53F8D74)
* **pLine2TextLabel**: Text label for the second line of the warning message.
* **bAddNumber**: If a number needs to be inserted into `~1~` text of `pLine1TextLabel`
* **iNumberToAdd**: What number to add into `~1~` of `pLine1TextLabel` 
* **iSubstringFlags**: `0` - none, `1` - First substring is literal text, `2` - Second substring is literal text. These can be combined with the `|` operator.
* **pFirstSubstring**: First substring.
* **pSecondSubstring**: Second substring.
* **bBlackBackground**: If the screen should have a black background while the message is rendering. 

