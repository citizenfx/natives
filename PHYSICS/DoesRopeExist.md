---
ns: PHYSICS
---
## DOES_ROPE_EXIST

```c
// 0xFD5448BE3111ED96 0x66E4A3AC
BOOL DOES_ROPE_EXIST(int* ropeHandle);
```

Checks whether a rope exists.

## Parameters
* **ropeHandle**: The handle of the rope to check

## Return value
A boolean representing if the rope with the specified handle exists or not.

## Examples
```lua
-- Create a rope and store the handle
local rope = AddRope(-2096.096436, -311.906891, 14.510918, 0.0, 0.0, 0.0, 10.0, 1, 10.0, 0.0, 1.0, false, false, false, 1.0, false, 0)

-- Check if the rope exists.
if DoesRopeExist(rope) then 
    -- If the rope does exist, delete the rope.
    DeleteRope(rope)
end
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

// Create a rope and store the reference
Rope rope = World.AddRope(RopeType.ThinMetalWire, new Vector3(0f, 0f, 0f), new Vector3(0f, 0f, 0f), 0f, 0f, false);
int handle = rope.Handle;

// Check if the rope exists.
if (DoesRopeExist(ref handle))
{
    // If the rope does exist, delete the rope.
    DeleteRope(ref handle);
}
```