---
ns: MISC
---
## DISPLAY_ONSCREEN_KEYBOARD

```c
// 0x00DC833F2568DBF6 0xAD99F2CE
void DISPLAY_ONSCREEN_KEYBOARD(int keyboardType, char* windowTitle, char* description, char* defaultText, char* defaultConcat1, char* defaultConcat2, char* defaultConcat3, int maxInputLength);
```

Displays a text input box.

`keyboardType` values:
| Name | Value |
| ---- | ----- |
| English | 0 |
| Localised | 1 |
| Password | 2 |
| Gamertag | 3 |
| Email | 4 |
| Basic English | 5 |
| Filename | 6 |

## Parameters
* **keyboardType**: See the list above. Default is `0`.
* **windowTitle**: Text label for the title of the box.
* **description**: Has no use on PC. 
* **defaultText**: Default text that is written in the input field.
* **defaultConcat1**: 
* **defaultConcat2**: 
* **defaultConcat3**: 
* **maxInputLength**: Max number of characters that can be typed (2 - 256).

