---
ns: SCRIPT
---
## SET_NO_LOADING_SCREEN

```c
// 0x5262CC1995D07E09 0xC8055034
void SET_NO_LOADING_SCREEN(BOOL toggle);
```

Doesn't seem to do anything. Set value can be retrieved using [`GET_NO_LOADING_SCREEN`](#_0x18C1270EA7F199BC).

## Parameters
* **toggle**: Enabled/Disable

## Example

```lua
SetNoLoadingScreen(true)
print(GetNoLoadingScreen()) -- will return true
```
