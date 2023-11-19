---
ns: MISC
aliases: ["0x0CF97F497FE7D048", "_CLEAR_WEATHER_TYPE_OVERTIME_PERSIST"]
---
## CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK

```c
// 0x0CF97F497FE7D048
void CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK(cs_type(float) int milliseconds);
```

```
0 as param = weird black and green screen
0.1 - 0.99 = Prevent rain effect from falling (still sound and effects on puddles) and prevent puddles from increase/decrease, seems than it prevent any weather change too
1 and more = "Unfreeze" rain puddles but clear weather too
When 'freezing' is enabled, it seem to also freeze value getted with GetRainLevel
```

## Parameters
* **milliseconds**: 

