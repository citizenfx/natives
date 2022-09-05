---
ns: TASK
---
## ADD_PATROL_ROUTE_NODE

```c
// 0x8EDF950167586B7C 0x21B48F10
void ADD_PATROL_ROUTE_NODE(int id, char* guardScenario, float x1, float y1, float z1, float x2, float y2, float z2, int waitTime);
```

```
id is an integer that "identifies" the route node for linking to the route with ADD_PATROL_ROUTE_LINK.
guardScenarion can be "WORLD_HUMAN_GUARD_STAND" or "StandGuard".

x2,y2 and z2 seem to be coordinates for the direction in which the ped final looks
```

## Parameters
* **id**: 
* **guardScenario**: 
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **waitTime**: 

## Examples

```lua
-- the guard will go toward vector3(1.0, 1.0, 1.0) coordinates looking toward vector3(0.0, 0.0, 0.0) coordinates waiting 1000ms with the WORLD_HUMAN_GUARD_STAND animation
AddPatrolRouteNode(1, "WORLD_HUMAN_GUARD_STAND", vector3(1.0, 1.0, 1.0), vector3(0.0, 0.0, 0.0), 1000)
```
