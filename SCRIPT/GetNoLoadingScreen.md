---
ns: SCRIPT
aliases: ["_GET_NO_LOADING_SCREEN"]
---
## GET_NO_LOADING_SCREEN

```c
// 0x18C1270EA7F199BC 0x27512BA0
BOOL GET_NO_LOADING_SCREEN();
```

## Return value

The value that was set by [SET_NO_LOADING_SCREEN](#_0x5262CC1995D07E09)

## Examples
```lua
SetNoLoadingScreen(true)
print(GetNoLoadingScreen()) -- will return true
```
