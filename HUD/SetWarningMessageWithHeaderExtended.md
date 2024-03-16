---
ns: HUD
aliases: ["0x38B55259C2E078ED", "_SET_WARNING_MESSAGE_WITH_HEADER_UNK"]
---
## SET_WARNING_MESSAGE_WITH_HEADER_EXTENDED

```c
// 0x38B55259C2E078ED
void SET_WARNING_MESSAGE_WITH_HEADER_EXTENDED(char* headerTextLabel, char* line1TextLabel, int buttonsBitField, cs_type(char*) int buttonsBitFieldUpper, cs_type(BOOL) char* line2TextLabel, cs_type(Any) BOOL addNumber, cs_type(Any*) int numberToAdd, cs_type(Any*) char* firstSubstring, cs_type(BOOL) char* secondSubstring, cs_type(Any) BOOL showBackground, int errorCode);
```

Sets a warning message for one frame with header and upper buttons bit field that don't fit the standard 32 bit set.

## Parameters
* **headerTextLabel**: Text label to set on the header/title.
* **line1TextLabel**: Text label to set on the first line of the body..
* **buttonsBitField**: Bit field of the button flags. See [`SET_WARNING_MESSAGE`](#_0x7B1776B3B53F8D74).
* **buttonsBitFieldUpper**: Bit field of the upper button flags. See [`SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED`](#_0x15803FEC3B9A872B).
* **line2TextLabel**: Text label to set on the second line of the body.
* **addNumber**: If number should be inserted into `~1~` in the body.
* **numberToAdd**: What number to insert into `~1~` in the body.
* **firstSubstring**: First substring text label to insert into `~a~` in the body.
* **secondSubstring**: Second substring text label to insert into `~a~` in the body.
* **showBackground**: Bool indicating if the message should have a black background.
* **errorCode**: Error number to show at the bottom of the message. `0` is the default.
