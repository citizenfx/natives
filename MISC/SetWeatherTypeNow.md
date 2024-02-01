---
ns: MISC
---
## SET_WEATHER_TYPE_NOW

```c
// 0x29B487C359E19889 0x361E9EAC
void SET_WEATHER_TYPE_NOW(char* weatherType);
```

Immediately changes the game's weather to the specified type, which will then persist for one cycle before the game resumes its natural weather progression.

```
NativeDB Introduced: v323
```

**Weather Types:**
- CLEAR
- EXTRASUNNY
- CLOUDS
- OVERCAST
- RAIN
- CLEARING
- THUNDER
- SMOG
- FOGGY
- XMAS
- SNOW
- SNOWLIGHT
- BLIZZARD
- HALLOWEEN
- NEUTRAL

## Parameters
* **weatherType**: The weather type to set. This should be one of the predefined weather type strings.