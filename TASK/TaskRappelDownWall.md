---
ns: TASK
aliases: ["0xEAF66ACDDC794793"]
---
## _TASK_RAPPEL_DOWN_WALL

```c
// 0xEAF66ACDDC794793
void _TASK_RAPPEL_DOWN_WALL(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, float minZ, int ropeId, char* clipset, Any p10);
```

Attaches a ped to a rope and allows player control to rappel down a wall.
Disables all collisions while on the rope.

NativeDB Introduced: v1868

## Parameters
* **ped**: Ped to perform the task
* **x1**: X coord to start the task
* **y1**: Y coord to start the task
* **z1**: Z coord to start the task
* **x2**: Second X coord, uses the same position as above in the scripts
* **y2**: Second Y coord
* **z2**: Second Z coord
* **minZ**: Minimum Z that the player can descend to
* **ropeId**: Rope to attach this task to, must be created with [ADD_ROPE](#_0xE832D760399EB220)
* **clipset**: Clipset to use for the task
* **p10**: Usually 1 in the scripts

## Examples

```lua
local coords = vector3(258.68, -3311.5, 45.72)
RopeLoadTextures()
SetEntityCoords(PlayerPedId(), coords - vector3(0, 0, 10.0))
local ropeId = AddRope(coords, -90.0, 90.0, -90.0, 78.0, 7, 78.0, 78.0, 1.2, false, false, true, 10.0, false, 0)
TaskRappelDownWall(PlayerPedId(), coords, coords, -130.0, ropeId, "clipset@anim_heist@hs3f@ig1_rappel@male", 1)
N_0xa1ae736541b0fca3(ropeId, true)
PinRopeVertex(ropeId, (GetRopeVertexCount(ropeId) - 1), coords + vector3(0, 0, 1.0))
RopeSetUpdateOrder(ropeId, 0)
```
