---
ns: MISC
aliases: ["0xCA78CFA0366592FE","_DISPLAY_ONSCREEN_KEYBOARD_2"]
---
## DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING

```c
// 0xCA78CFA0366592FE 0xD2688412
void DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING(int keyboardType, char* windowTitle, cs_type(AnyPtr) char* description, char* defaultText, char* defaultConcat1, char* defaultConcat2, char* defaultConcat3, char* defaultConcat4, char* defaultConcat5, char* defaultConcat6, char* defaultConcat7, int maxInputLength);
```

Displays the text input box with support for input with 500 characters.

## Parameters
* **keyboardType**: See [`DISPLAY_ONSCREEN_KEYBOARD`](#_0x00DC833F2568DBF6)
* **windowTitle**: Text label of the window title.
* **description**: Unused on PC.
* **defaultText**: Default text that is written in the input field.
* **defaultConcat1**: 
* **defaultConcat2**: 
* **defaultConcat3**: 
* **defaultConcat4**: 
* **defaultConcat5**: 
* **defaultConcat6**: 
* **defaultConcat7**: 
* **maxInputLength**: Value between 2 - 500.

