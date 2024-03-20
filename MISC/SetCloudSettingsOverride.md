---
ns: MISC
aliases: ["0x02DEAAC8F8EA7FE7"]
---
## SET_CLOUD_SETTINGS_OVERRIDE

```c
// 0x02DEAAC8F8EA7FE7
void SET_CLOUD_SETTINGS_OVERRIDE(char* overrideSettingsName);
```

Overrides the cloud settings, which are normally controlled by the weather, with the specified named version. This native allows for custom cloud formations and behaviors that deviate from the default settings associated with the game's current weather conditions.

```
NativeDB Introduced: v323
```

## Parameters
* **overrideSettingsName**: The name of the cloud settings to use. Use a empty string to clear the override and return to the default settings.
