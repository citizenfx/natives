---
ns: AUDIO
---
## SET_STATIC_EMITTER_ENABLED

```c
// 0x399D2D3B33F1B8EB 0x91F72E92
void SET_STATIC_EMITTER_ENABLED(char* emitterName, BOOL toggle);
```

```
Example:
AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
This turns off surrounding sounds not connected directly to peds.
```

## Parameters
* **emitterName**: 
* **toggle**: 

