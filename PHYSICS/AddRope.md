---
ns: PHYSICS
---
## ADD_ROPE

```c
// 0xE832D760399EB220 0xA592EC74
int ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float maxLength, int ropeType, float initLength, float minLength, float lengthChangeRate, BOOL onlyPPU, BOOL collisionOn, BOOL lockFromFront, float timeMultiplier, BOOL breakable, Any* unkPtr);
```

```
Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.
__
Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).
Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
```

There are 8 different rope types in the base game. Full rope data can be found in `ropedata.xml`.

```c
enum ePhysicsRopeType {
    RopeThin = 0, // Verticies: 1, Radius: 0.03, Textures: rope & rope_n
    RopeWire6 = 1, // Verticies: 4, Radius: 0.015, Textures: steel_cable & steel_cable_n
    RopeWire32 = 2, // Verticies: 32, Radius: 0.025, Textures: steel_cable & steel_cable_n
    RopeMesh = 3, // Verticies: 6, Radius: 0.03, Textures: rope & rope_n
    RopeThinWire32 = 4, // Verticies: 32, Radius: 0.01, Textures: rope & rope_n
    RopeReins = 5, // Verticies: 32, Radius: 0.005, Textures: rope & rope_n
    RopeThin4 = 6, // Verticies: 4, Radius: 0.03, Textures: rope & rope_n
    RopeWire64 = 7 // Verticies: 64, Radius: 0.025, Textures: steel_cable & steel_cable_n
}
```

## Parameters
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **rotX**: Rotation X component.
* **rotY**: Rotation Y component.
* **rotZ**: Rotation Z component.
* **maxLength**: The maximum length the rope can droop.
* **ropeType**: The zero-based index of the entry in the `ropedata.xml` file. *NOTE: Using an index which does not exist will crash the game. As of game build 3258, valid values are from `0` to `7` inclusive.*
* **initLength**: The initial length of the rope.
* **minLength**: The minimum length the rope can be.
* **lengthChangeRate**: The speed in which the rope will wind if winding is started.
* **onlyPPU**:
* **collisionOn**: Whether the rope should have collision. In original scripts this is followed by a LoadRopeData call when set.
* **lockFromFront**: If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).
* **timeMultiplier**: The speed as which physics should run at. 1.0f is normal, 2.0f is twice as fast, -1.0f is time going backwards. This can affect gravity, etc.
* **breakable**: Whether shooting the rope will break it.
* **unkPtr**: Unknown pointer, always 0 in original scrips.

## Return value
A script handle for the rope

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
        // whoops, the rope doesn't exist, we don't want to do
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
