---
ns: HUD
aliases: ["0x521FB041D93DD0E4", "_SET_TEXT_GXT_ENTRY", "_BEGIN_TEXT_COMMAND_LINE_COUNT"]
---
## BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING

```c
// 0x521FB041D93DD0E4 0x94B82066
void BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(char* entry);
```

```
get's line count  
int GetLineCount(char *text, float x, float y)  
	{  
_BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
                ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
	}  
```

## Parameters
* **entry**: 

