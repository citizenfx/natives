---
ns: MISC
---
## SET_WEATHER_TYPE_PERSIST

```c
// 0x704983DF373B198F 0xC6C04C75
void SET_WEATHER_TYPE_PERSIST(char* weatherType);
```

Sets the current weather type to persist indefinitely until changed.

**Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#_0xED712CA327900C8A) if you want to override weather in networked sessions.

```
NativeDB Introduced: v323
```

## Parameters
* **weatherType**: The weather type to be set as persistent. Refer to [`SET_WEATHER_TYPE_NOW`](#_0x29B487C359E19889) for a list of weather type strings.
