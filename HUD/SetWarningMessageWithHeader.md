---
ns: HUD
aliases: ["_SET_WARNING_MESSAGE_2"]
---
## SET_WARNING_MESSAGE_WITH_HEADER

```c
// 0xDC38CC1E35B6A5D7 0x2DB9EAB5
void SET_WARNING_MESSAGE_WITH_HEADER(char* headerTextLabel, char* line1TextLabel, int buttonsBitField, char* line2TextLabel, BOOL addNumber, int numberToAdd, cs_type(BOOL) char* substring1TextLabel, cs_type(AnyPtr) char* substring2TextLabel, BOOL showBg);
```

Shows the warning screen for one frame with an option to change the header.

```
NativeDB Added Parameter 10: int errorCode
```

## Parameters
* **headerTextLabel**: Text label to set on the header.
* **line1TextLabel**: Text label to set on the first line on the body.
* **buttonsBitField**: Buttons bit field. See [`SET_WARNING_MESSAGE`](#_0x7B1776B3B53F8D74) for an example.
* **line2TextLabel**: Text label to set on the second line on the body.
* **addNumber**: If a number needs to be inserted to `~1~` in the text label.
* **numberToAdd**: What number should be inserted to `~1~`.
* **substring1TextLabel**: First text label (or "") to insert into `~1~` of the body.
* **substring2TextLabel**: Second text label (or "") to insert into `~1~` of the body.
* **showBg**: If the message needs to have a black background.

