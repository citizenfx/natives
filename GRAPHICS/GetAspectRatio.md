---
ns: GRAPHICS
aliases: ["_GET_SCREEN_ASPECT_RATIO", "_GET_ASPECT_RATIO"]
---
## GET_ASPECT_RATIO

```c
// 0xF1307EF624A80D87
float GET_ASPECT_RATIO(BOOL physicalAspect);
```

This native retrieves the aspect ratio of the game window. If `physicalAspect` is `true`, it returns the physical aspect ratio of the game window, which is useful for 3x1 modes. Otherwise, it returns the aspect ratio of the main game window, considering any custom overrides from the settings menu.

```
NativeDB Introduced: v323
```

## Parameters
* **physicalAspect**: A boolean value. Passing in `true` returns the physical aspect ratio of the game window. Passing in `false` returns the aspect ratio of the main game window.

## Return value
The aspect ratio of the game window as a floating-point number.