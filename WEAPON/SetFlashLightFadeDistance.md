---
ns: WEAPON
---
## SET_FLASH_LIGHT_FADE_DISTANCE

```c
// 0xCEA66DAD478CD39B 0xB0127EA7
cs_type(Any) BOOL SET_FLASH_LIGHT_FADE_DISTANCE(float distance);
```

Define the maximum distance beyond which flashlight illumination ceases to render.

```
NativeDB Introduced: v323
```

## Parameters
* **distance**: The maximum distance (in meters) at which the flashlight's effect is visible. Setting this value to `0` or any negative number will revert to the game's default fade distance.

## Return value
Returns `true` if the native successfully sets the flashlight fade distance. Otherwise, it returns `false`.