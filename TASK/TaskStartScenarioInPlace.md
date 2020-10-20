---
ns: TASK
---
## TASK_START_SCENARIO_IN_PLACE

```c
// 0x142A02425FF02BD9 0xE50D6DDE
void TASK_START_SCENARIO_IN_PLACE(Ped ped, char* scenarioName, int unkDelay, BOOL playEnterAnim);
```

```
Plays a scenario on a Ped at their current location.  
unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.  
playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.  

List of scenarioNames: pastebin.com/6mrYTdQv  

Also these:  
WORLD_FISH_FLEE  
DRIVE  
WORLD_HUMAN_HIKER  
WORLD_VEHICLE_ATTRACTOR  
WORLD_VEHICLE_BICYCLE_MOUNTAIN  
WORLD_VEHICLE_BIKE_OFF_ROAD_RACE  
WORLD_VEHICLE_BIKER  
WORLD_VEHICLE_CONSTRUCTION_PASSENGERS  
WORLD_VEHICLE_CONSTRUCTION_SOLO  
WORLD_VEHICLE_DRIVE_PASSENGERS  
WORLD_VEHICLE_DRIVE_SOLO  
WORLD_VEHICLE_EMPTY  
WORLD_VEHICLE_PARK_PARALLEL  
WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN  
WORLD_VEHICLE_POLICE_BIKE  
WORLD_VEHICLE_POLICE_CAR  
WORLD_VEHICLE_POLICE_NEXT_TO_CAR  
WORLD_VEHICLE_SALTON_DIRT_BIKE  
WORLD_VEHICLE_TRUCK_LOGS  
```

## Parameters
* **ped**: 
* **scenarioName**: 
* **unkDelay**: 
* **playEnterAnim**: 

