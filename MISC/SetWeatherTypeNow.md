---
ns: MISC
---
## SET_WEATHER_TYPE_NOW

```c
// 0x29B487C359E19889 0x361E9EAC
void SET_WEATHER_TYPE_NOW(char* weatherType);
```

Immediately changes the game's weather to the specified type, which will then persist for one cycle before the game resumes its natural weather progression.

**Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#_0xED712CA327900C8A) if you want to override weather in networked sessions.

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
- RAIN_HALLOWEEN
- SNOW_HALLOWEEN

## Parameters
* **weatherType**: The weather type to set. This should be one of the predefined weather type strings.
