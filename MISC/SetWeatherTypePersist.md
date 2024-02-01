---
ns: MISC
---
## SET_WEATHER_TYPE_PERSIST

```c
// 0x704983DF373B198F 0xC6C04C75
void SET_WEATHER_TYPE_PERSIST(char* weatherType);
```

Sets the current weather type to persist indefinitely until changed.

```
NativeDB Introduced: v323
```

## Parameters
* **weatherType**: The weather type to be set as persistent. Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#_0xED712CA327900C8A) for a list of weather type strings.