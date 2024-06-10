---
ns: GRAPHICS
---
## GET_IS_WIDESCREEN

```c
// 0x30CF4BDA4FCB1905 0xEC717AEF
BOOL GET_IS_WIDESCREEN();
```

This native retrieves whether the game is running in widescreen mode or not.

```
NativeDB Introduced: v323
```

## Return value
A boolean value indicating whether the game is running in widescreen mode (`true`) or not (`false`).

Returns `false` for narrow format aspect ratios (3:2, 4:3, 5:4, etc.) and `true` for wide format aspect ratios (5:3, 16:9, 16:10, etc.). If the aspect ratio is set to "Auto" in the game settings, it returns `false` or `true` based on the actual set resolution ratio.
