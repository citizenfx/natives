---
ns: HUD
---
## _SET_NOTIFICATION_TEXT_ENTRY

```c
// 0x202709F4C58A0424 0x574EE85C
void _SET_NOTIFICATION_TEXT_ENTRY(char* text);
```

```
Declares the entry type of a notification, for example "STRING".  
int ShowNotification(char *text)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```

## Parameters
* **text**: 

