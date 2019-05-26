---
ns: PED
---
## SET_PED_MOVE_RATE_OVERRIDE

```c
// 0x085BF80FA50A39D1 0x900008C6
void SET_PED_MOVE_RATE_OVERRIDE(Ped ped, float value);
```

```
Min: 0.00  
Max: 10.00  
Can be used in combo with fast run cheat.  
When value is set to 10.00:  
Sprinting without fast run cheat: 66 m/s  
Sprinting with fast run cheat: 77 m/s  
Needs to be looped!  
Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.  
```

## Parameters
* **ped**: 
* **value**: 

