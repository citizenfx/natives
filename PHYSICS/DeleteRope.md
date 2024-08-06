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
local function cleanup_rope_textures()
	-- we only want to cleanup if there are no other ropes still left on the map
	-- otherwise we'll make them go invisible.
	if #GetAllRopes() == 0 then
		-- there are no ropes on the map, we're safe to unload the textures.
		RopeUnloadTextures()
	end
end

CreateThread(function()
	-- if textures aren't loaded then we need to load them
	if not RopeAreTexturesLoaded() then
		-- load the textures so we can see the rope
		RopeLoadTextures()
		while not RopeAreTexturesLoaded() do
			Wait(0)
		end
	end

	-- Create a rope and store the handle
	local rope = AddRope(-2096.096, -311.906, 14.51, 0.0, 0.0, 0.0, 10.0, 1, 10.0, 0.0, 1.0, false, false, false, 1.0, false, 0)
	-- Check if the rope exists.
	if not DoesRopeExist(rope) then
		cleanup_rope_textures()
		-- If the rope does not exist, end the execution of the code here.
		return
	end
	-- Let the rope exist for 3 seconds
	Wait(3000)
	-- Delete the rope!
	DeleteRope(rope)
	cleanup_rope_textures()
end)
```

```cs
using static CitizenFX.Core.Native.API;

// Create a rope and store the reference
int unkPtr = 0;
int ropehandle = AddRope(0f, 0f, 0f, 0f, 0f, 0f, 10f, 5, 10f, 0f, 1f, false, false, false, 1f, false, ref unkPtr);

// Check if the rope exists.
if (!DoesRopeExist(ref ropehandle))
{
    // If the rope does not exist, end the execution of the code here.
    return;
}

// If the rope does exist, delete the rope.
DeleteRope(ref ropehandle);
```