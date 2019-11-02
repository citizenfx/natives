---
ns: HUD
aliases: ["_DISPLAY_HELP_TEXT_FROM_STRING_LABEL"]
---
## END_TEXT_COMMAND_DISPLAY_HELP

```c
// 0x238FFE5C7B0498A6 0xB59B530D
void END_TEXT_COMMAND_DISPLAY_HELP(int p0, BOOL loop, BOOL beep, int shape);
```

```
-----------  
p3 (duration in MS) was previously mentioned as "shape", but with some more testing it seems that it's more likely to be a duration in MS. (Tested this when not calling it every tick, but instead only once and let it display for the specified duration).   
-1 seems to be default delay (around 3 seconds), 5000 (ms) seems to be the max. Anything > 5000 will still result in 5 seconds of display time.  
Old p3 (shape) description: "shape goes from -1 to 50 (may be more)."  
--------------  
p0 is always 0.  
Example:  
void FloatingHelpText(char* text)  
{  
	BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1);  
}  
Image:  
- imgbin.org/images/26209.jpg  
more inputs/icons:  
- pastebin.com/nqNYWMSB  
Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL  
```

## Parameters
* **p0**: 
* **loop**: 
* **beep**: 
* **shape**: 

