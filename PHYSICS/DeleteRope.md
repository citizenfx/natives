---
ns: PHYSICS
---
## DELETE_ROPE

```c
// 0x52B4829281364649 0x748D72AF
void DELETE_ROPE(int* ropeId);
```

Deletes the rope with the specified handle.
You might want to check if the rope exists before with [DOES_ROPE_EXIST](#_0xFD5448BE3111ED96).

## Parameters
* **ropeId**: The handle of the rope to delete

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
async Task CreateRope()
{
    // wait for the textures to be loaded before we create the rope,
    // otherwise it will be invisible.
    bool isLoadedByAnotherScript = RopeAreTexturesLoaded();
    if (!isLoadedByAnotherScript)
    {
        RopeLoadTextures();
        while (!RopeAreTexturesLoaded())
        {
            await BaseScript.Delay(0);
        }
    }

    /// <summary>
    /// Unloads the rope texture if we were the script that requested it.
    /// NOTE: This is bug prone, if possible you should do your own reference
    /// counting via global state bags.
    /// </summary>
    void CleanupRopeTextures(bool alreadyLoadedByOtherScript)
    {
        // if we were the script to load the textures then we want to cleanup
        // the textures,
        if (!alreadyLoadedByOtherScript)
        {
            RopeUnloadTextures();
        }
    }

    // not used by anything
    int _unusedStringPtr = 0;

    Vector3 ropePosition = new Vector3(-2096.09f, -311.90f, 14.51f);
    Vector3 ropeRotation = Vector3.Zero;

    // Create a rope and store the handle
    int ropehandle = AddRope(
            ropePosition.X,
            ropePosition.Y,
            ropePosition.Z,
            ropeRotation.X,
            ropeRotation.Y,
            ropeRotation.Z,
            10f /* max length */,
            1 /* rope type */,
            10f /* init length */,
            0.5f /* min length */,
            0.5f /* length change rate */,
            false /* ppu only */,
            false /* collision on */,
            false /* lock from front */,
            1f /* time multiplier */,
            false /* breakable */,
            ref _unusedStringPtr /* unused */
    );

    // Check if the rope exists.
    if (!DoesRopeExist(ref ropehandle))
    {
        CleanupRopeTextures(isLoadedByAnotherScript);
        // whoops, the rope doesn't exist, we don't want we don't want to do
        // anything with an invalid reference
        return;
    }

    // We want to see the rope for 3 seconds
    await BaseScript.Delay(3000);

    // begone rope!
    DeleteRope(ref ropehandle);
    CleanupRopeTextures(isLoadedByAnotherScript);
}
```
