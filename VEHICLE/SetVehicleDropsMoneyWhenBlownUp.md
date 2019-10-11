---
ns: VEHICLE
aliases: ["0x068F64F2470F9656", "_SET_VEHICLE_CREATES_MONEY_PICKUPS_WHEN_EXPLODED"]
---
## SET_VEHICLE_DROPS_MONEY_WHEN_BLOWN_UP

```c
// 0x068F64F2470F9656 0x4BB5605D
void SET_VEHICLE_DROPS_MONEY_WHEN_BLOWN_UP(Vehicle vehicle, BOOL toggle);
```

```
Money pickups are created around cars when they explodes. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seems to give the same amount of money.  
youtu.be/3arlUxzHl5Y   
i.imgur.com/WrNpYFs.jpg  
From the scripts:  
VEHICLE::_068F64F2470F9656(l_36, 0);  
Found a "correct" name for this :P  
_dead_vehicle_pickups_dies_when_set_exploded_destroy_it_drops_on_money  
```

## Parameters
* **vehicle**: 
* **toggle**: 

