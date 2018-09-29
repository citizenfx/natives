---
ns: HUD
aliases: ["_SET_TEXT_GXT_ENTRY"]
---
## _BEGIN_TEXT_COMMAND_LINE_COUNT

```c
// 0x521FB041D93DD0E4 0x94B82066
void _BEGIN_TEXT_COMMAND_LINE_COUNT(char* entry);
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

