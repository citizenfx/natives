---
ns: HUD
aliases: ["0xDB88A37483346780"]
---
## _GET_TEXT_SCALE_HEIGHT

```c
// 0xDB88A37483346780 0x3330175B
float _GET_TEXT_SCALE_HEIGHT(float size, int font);
```

```
This get's the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.  
```

## Parameters
* **size**: 
* **font**: 

## Return value
