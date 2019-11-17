---
ns: PED
aliases: ["0xD69411AA0CEBF9E9"]
---
## SET_PED_ENVEFF_COLOR_MODULATOR

```c
// 0xD69411AA0CEBF9E9 0x87A0C174
void SET_PED_ENVEFF_COLOR_MODULATOR(Ped ped, int r, int g, int b);
```

```
Something related to the environmental effects natives.
In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
```

## Parameters
* **ped**: 
* **r**: 
* **g**: 
* **b**: 

