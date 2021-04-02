---
ns: TASK
---
## ADD_PATROL_ROUTE_NODE

```c
// 0x8EDF950167586B7C 0x21B48F10
void ADD_PATROL_ROUTE_NODE(int p0, char* p1, float x1, float y1, float z1, float x2, float y2, float z2, int p8);
```

```
Example:
TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);
p0 is between 0 and 4 in the scripts.
p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".
p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.
Examples:
TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);
TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);
p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.
p8 is an int, often random set to for example: MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000).
```

## Parameters
* **p0**: 
* **p1**: 
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **p8**: 

