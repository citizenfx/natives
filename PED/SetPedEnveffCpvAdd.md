---
ns: PED
aliases: ["0x110F526AB784111F"]
---
## SET_PED_ENVEFF_CPV_ADD

```c
// 0x110F526AB784111F 0x3B882533
void SET_PED_ENVEFF_CPV_ADD(Ped ped, float p1);
```

```
In agency_heist3b.c4, its like this 90% of the time:  
PED::_110F526AB784111F(ped, 0.099);  
PED::SET_PED_ENVEFF_SCALE(ped, 1.0);  
PED::_D69411AA0CEBF9E9(ped, 87, 81, 68);  
PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);  
and its like this 10% of the time:  
PED::_110F526AB784111F(ped, 0.2);  
PED::SET_PED_ENVEFF_SCALE(ped, 0.65);  
PED::_D69411AA0CEBF9E9(ped, 74, 69, 60);  
PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);  
```

## Parameters
* **ped**: 
* **p1**: 

