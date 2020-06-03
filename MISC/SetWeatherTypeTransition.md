---
ns: MISC
---
## _SET_WEATHER_TYPE_TRANSITION

```c
// 0x578C752848ECFA0C 0x5CA74040
void _SET_WEATHER_TYPE_TRANSITION(Hash weatherType1, Hash weatherType2, float percentWeather2);
```

```
Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
Note that unlike most of the other weather natives, this native takes the hash of the weather name, not the plain string. These are the weather names and their hashes:  
CLEAR	0x36A83D84  
EXTRASUNNY	0x97AA0A79  
CLOUDS	0x30FDAF5C  
OVERCAST	0xBB898D2D  
RAIN	0x54A69840  
CLEARING	0x6DB1A50D  
THUNDER	0xB677829F  
SMOG	0x10DCF4B5  
FOGGY	0xAE737644  
XMAS	0xAAC9C895  
SNOWLIGHT	0x23FB812B  
BLIZZARD	0x27EA2814  
```

## Parameters
* **weatherType1**: 
* **weatherType2**: 
* **percentWeather2**: 

