---
ns: HUD
aliases: ["0xBD12F8228410D9B4","_SHOW_LOADING_PROMPT","_END_TEXT_COMMAND_BUSY_STRING"]
---
## END_TEXT_COMMAND_BUSYSPINNER_ON

```c
// 0xBD12F8228410D9B4 0x903F5EE4
void END_TEXT_COMMAND_BUSYSPINNER_ON(int busySpinnerType);
```

```
This does NOT get called per frame. Call it once to show, then use UI::_REMOVE_LOADING_PROMPT to remove it  
Changes the the above native's (UI::_SET_LOADING_PROMPT_TEXT_ENTRY) spinning circle type.  
Types:  
enum LoadingPromptTypes  
{  
	LOADING_PROMPT_LEFT,  
	LOADING_PROMPT_LEFT_2,  
	LOADING_PROMPT_LEFT_3,  
	SAVE_PROMPT_LEFT,  
	LOADING_PROMPT_RIGHT,  
};  
```

## Parameters
* **busySpinnerType**: 

