---
ns: MISC
---
## _GET_WEATHER_TYPE_TRANSITION

```c
// 0xF3BBE884A14BB413 0x9A5C1D56
void _GET_WEATHER_TYPE_TRANSITION(Hash* weatherType1, Hash* weatherType2, float* percentWeather2);
```

```
changed any --> hash  
progress_or_time --> percentWeather2, is not time but percent of the 2nd weather (0-1).  
weatherType1 is same as GAMEPLAY::GET_PREV_WEATHER_TYPE_HASH_NAME()  
and weatherType 2 GAMEPLAY::GET_NEXT_WEATHER_TYPE_HASH_NAME()  
-QuantFC  
```

## Parameters
* **weatherType1**: 
* **weatherType2**: 
* **percentWeather2**: 

