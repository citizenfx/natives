---
ns: VEHICLE
---
## SET_VEHICLE_NUMBER_PLATE_TEXT

```c
// 0x95A88F0B409CDA47 0x400F9556
void SET_VEHICLE_NUMBER_PLATE_TEXT(Vehicle vehicle, char* plateText);
```

```
Sets a vehicle's license plate text.  8 chars maximum.  
Example:  
Ped playerPed = PLAYER::PLAYER_PED_ID();  
Vehicle veh = PED::GET_VEHICLE_PED_IS_USING(playerPed);  
char *plateText = "KING";  
VEHICLE::SET_VEHICLE_NUMBER_PLATE_TEXT(veh, plateText);  
```

## Parameters
* **vehicle**: 
* **plateText**: 

