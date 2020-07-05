---
ns: MISC
---
## _SET_RAIN_FX_INTENSITY

```c
// 0x643E26EA6E024D92
void _SET_RAIN_FX_INTENSITY(float intensity);
```

Controls rain, rain sounds and the creation of puddles.

With an `intensity` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.

With an `intensity` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.

To use the rain intensity of the current weather, call this native with `-1f` as `intensity`.

## Parameters
* **intensity**: Strength of rain effects
