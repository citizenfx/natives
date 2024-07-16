---
ns: VEHICLE
aliases: ["0xDBC631F109350B8C"]
---
## SET_DONT_ALLOW_PLAYER_TO_ENTER_VEHICLE_IF_LOCKED_FOR_PLAYER

```c
// 0xDBC631F109350B8C 0x486C1280
void SET_DONT_ALLOW_PLAYER_TO_ENTER_VEHICLE_IF_LOCKED_FOR_PLAYER(Vehicle vehicle, BOOL p1);
```

```
Related to locking the vehicle or something similar.  
In the decompiled scripts, its always called after  
VEHICLE::_SET_EXCLUSIVE_DRIVER(a_0, 0, 0);  
VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(a_0, 1);  
VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(a_0, PLAYER::PLAYER_ID(), 0);  
```

## Parameters
* **vehicle**: 
* **p1**: 

