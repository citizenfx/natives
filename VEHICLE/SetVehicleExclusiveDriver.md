---
ns: VEHICLE
aliases: ["0x41062318F23ED854"]
---
## SET_VEHICLE_EXCLUSIVE_DRIVER

```c
// 0x41062318F23ED854 0xAA8BD440
void SET_VEHICLE_EXCLUSIVE_DRIVER(Vehicle vehicle, Ped toggle);
```

```
Seems according to TU27 X360 Scripts, this has 3 arguments as well.  
SET_VEHICLE_EXCLUSIVE_DRIVER(vehicle, 0, 0); in freemode.c  
In case 5 of a switch case, is the only time it shows Arg2 being PLAYER_PED_ID(), otherwise it's 0. Arg3 always seems to be 0.  
```

```
NativeDB Parameter 1: BOOL toggle
```

## Parameters
* **vehicle**: 
* **toggle**: 

