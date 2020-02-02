---
ns: ENTITY
---

## SET_ENTITY_COORDS

```c
// 0x06843DA7060A026B 0xDF70B41B
void SET_ENTITY_COORDS(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL clearArea);
```

```
p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.
Often ends with 1, 0, 0, 1); in the scripts. It works.
Axis - Invert Axis Flags
```

Sets an entity's coordinates in world space.

## Parameters

- **entity**: The entity to change coordinates for.
- **xPos**: The x coordinate.
- **yPos**: The y coordinate.
- **zPos**: The z coordinate.
- **xAxis**: Whether to invert x axis.
- **yAxis**: Whether to invert y axis.
- **zAxis**: Whether to invert z axis.
- **clearArea**: Whether to clear other entities in area around entity.

## Examples

```lua
local ped = PlayerPedId()
local currentPos = GetEntityCoords(ped)
print(currentPos)

SetEntityCoords(ped, 674.883, 548.269, 133.94, false, false, false, true)

currentPos = GetEntityCoords(ped)
print(currentPos) -- changed!
```

```js
const ped = PlayerPedId();
let currentPos = GetEntityCoords(ped, false);
console.log(`${currentPos[0]} ${currentPos[1]} ${currentPos[2]}`);

SetEntityCoords(ped, 674.883, 548.269, 133.94, false, false, false, true);

currentPos = GetEntityCoords(ped, false);
console.log(`${currentPos[0]} ${currentPos[1]} ${currentPos[2]}`); // changed!
```

```cs
using static CitizenFX.Core.Native.API;
// ...

int ped = PlayerPedId();
Vector3 currentPos = GetEntityCoords(ped, false);
Debug.WriteLine($"{currentPos}");

SetEntityCoords(ped, 674.883f, 548.269f, 133.94f, false, false, false, true);

currentPos = GetEntityCoords(ped, false);
Debug.WriteLine($"{currentPos}"); // changed!

// or the preferred use of C# wrapper
Debug.WriteLine($"{Game.PlayerPed.Position}");

Game.PlayerPed.Position = new Vector3(674.883f, 548.269f, 133.94f);

Debug.WriteLine($"{Game.PlayerPed.Position}"); // changed!
```
