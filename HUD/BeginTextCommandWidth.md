---
ns: HUD
aliases: ["_SET_TEXT_ENTRY_FOR_WIDTH"]
---
## _BEGIN_TEXT_COMMAND_WIDTH

```c
// 0x54CE8AC98E120CAB 0x51E7A037
void _BEGIN_TEXT_COMMAND_WIDTH(char* text);
```

```
Example:  
_BEGIN_TEXT_COMMAND_WIDTH("NUMBER");  
ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);  
float width = _END_TEXT_COMMAND_GET_WIDTH(true);  
```

## Parameters
* **text**: 

