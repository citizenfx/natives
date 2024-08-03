---
ns: PHYSICS
---
## DELETE_ROPE

```c
// 0x52B4829281364649 0x748D72AF
void DELETE_ROPE(int* ropeHandle);
```

Deletes the rope with the specified handle.
You might want to check if the rope exists before with [DOES_ROPE_EXIST](#_0xFD5448BE3111ED96).

## Parameters
* **ropeHandle**: The handle of the rope to delete

## Examples
```lua
-- Create a rope and store the handle
local rope = AddRope(-2096.096436, -311.906891, 14.510918, 0.0, 0.0, 0.0, 10.0, 1, 10.0, 0.0, 1.0, false, false, false, 1.0, false, 0)

-- Check if the rope exists.
if not DoesRopeExist(rope) then 
    -- If the rope does not exist, end the execution of the code here.
    return 
end

-- If the rope does exist, delete the rope.
DeleteRope(rope)
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

// Create a rope and store the reference
int unkPtr = 0;
int ropehandle = AddRope(0f, 0f, 0f, 0f, 0f, 0f, 10f, 5, 10f, 0f, 1f, false, false, false, 1f, false, ref unkPtr);

// Check if the rope exists.
if (!DoesRopeExist(ref handle))
{
    // If the rope does not exist, end the execution of the code here.
    return;
}

// If the rope does exist, delete the rope.
DeleteRope(ref handle);
```