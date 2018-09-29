---
ns: VEHICLE
---
## SET_VEHICLE_LIGHTS

```c
// 0x34E710FF01247C5A 0xE8930226
void SET_VEHICLE_LIGHTS(Vehicle vehicle, int state);
```

```
set's if the vehicle has lights or not.  
not an on off toggle.  
p1 = 0 ;vehicle normal lights, off then lowbeams, then highbeams  
p1 = 1 ;vehicle doesn't have lights, always off  
p1 = 2 ;vehicle has always on lights  
p1 = 3 ;or even larger like 4,5,... normal lights like =1  
note1: when using =2 on day it's lowbeam,highbeam  
but at night it's lowbeam,lowbeam,highbeam  
note2: when using =0 it's affected by day or night for highbeams don't exist in daytime.  
```

## Parameters
* **vehicle**: 
* **state**: 

