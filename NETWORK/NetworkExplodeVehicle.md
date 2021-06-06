---
ns: NETWORK
---
## NETWORK_EXPLODE_VEHICLE

```c
// 0x301A42153C9AD707 0x0E1B38AE
cs_type(Any) void NETWORK_EXPLODE_VEHICLE(Vehicle vehicle, BOOL isAudible, BOOL isInvisible, BOOL p3);
```

```
In the console script dumps, this is only referenced once.   
NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
am_plane_takedown.c   
network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
armenian2.c   
network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
fm_horde_controler.c  
network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
fm_mission_controller.c, has 6 hits so not going to list them.  
Side note, setting the first parameter to 0 seems to mute sound or so?  
Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
```

## Parameters
* **vehicle**: 
* **isAudible**: 
* **isInvisible**: 
* **p3**: 

## Return value
