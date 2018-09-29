---
ns: GRAPHICS
---
## GET_IS_WIDESCREEN

```c
// 0x30CF4BDA4FCB1905 0xEC717AEF
BOOL GET_IS_WIDESCREEN();
```

```
Setting Aspect Ratio Manually in game will return:  
false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
```

## Return value
