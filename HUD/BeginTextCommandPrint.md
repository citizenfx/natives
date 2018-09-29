---
ns: HUD
aliases: ["_SET_TEXT_ENTRY_2"]
---
## BEGIN_TEXT_COMMAND_PRINT

```c
// 0xB87A37EEB7FAA67D 0xF42C43C7
void BEGIN_TEXT_COMMAND_PRINT(char* GxtEntry);
```

```
Used to be known as _SET_TEXT_ENTRY_2  
void ShowSubtitle(char *text)  
{  
	BEGIN_TEXT_COMMAND_PRINT("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_PRINT(2000, 1);  
}  
```

## Parameters
* **GxtEntry**: 

