---
ns: GRAPHICS
---
## GET_IS_HIDEF

```c
// 0x84ED31191CC5D2C9 0x1C340359
BOOL GET_IS_HIDEF();
```

This native indicates whether the game is running in high-definition (HD) resolution. It returns `false` if the resolution is less than `1280x720` and `true` if it's equal to or greater than `1280x720`.

```
NativeDB Introduced: v323
```

## Return value
A boolean value indicating whether the game is running in high-definition (`true`) or not (`false`).