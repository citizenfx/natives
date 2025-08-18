---
ns: MISC
---
## _SET_WEATHER_TYPE_TRANSITION

```c
// 0x578C752848ECFA0C 0x5CA74040
void _SET_WEATHER_TYPE_TRANSITION(Hash weatherType1, Hash weatherType2, float percentWeather2);
```

Refer to [`SET_WEATHER_TYPE_NOW`](#_0x29B487C359E19889) for weather types.

```
Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
```

## Parameters
* **weatherType1**: 
* **weatherType2**: 
* **percentWeather2**: 

