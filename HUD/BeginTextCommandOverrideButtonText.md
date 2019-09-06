---
ns: HUD
aliases: ["0x8F9EE5687F8EECCD"]
---
## _BEGIN_TEXT_COMMAND_TIMER

```c
// 0x8F9EE5687F8EECCD 0xBF855650
void _BEGIN_TEXT_COMMAND_TIMER(char* p0);
```

```
void message(char *text)  
{  
	_BEGIN_TEXT_COMMAND_TIMER("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_END_TEXT_COMMAND_TIMER(0);  
}  
```

## Parameters
* **p0**: 

