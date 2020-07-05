---
ns: MISC
aliases: ["_SET_RAIN_FX_INTENSITY"]
---
## _SET_RAIN_LEVEL

```c
// 0x643E26EA6E024D92
void _SET_RAIN_LEVEL(float level);
```

Controls rain, rain sounds and the creation of puddles.

With an `level` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.

With an `level` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.

To use the rain level of the current weather, call this native with `-1f` as `level`.

## Parameters
* **level**: Strength of rain effects
