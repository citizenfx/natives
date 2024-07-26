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

### Rope Types
There are 8 different rope types in the base game. Full rope data can be found in `ropedata.xml`.
- Type: `rage__ropeThin`
    - Rope Type Value: `0`
    - Vertices: `1`
    - Radius: `0.03`
    - Texture Names: `rope` & `rope_n`

- Type: `rage__ropeWire6`
    - Rope Type Value: `1`
    - Vertices: `4`
    - Radius: `0.015`
    - Texture Names: `steel_cable` & `steel_cable_n`

- Type: `rage__ropeWire32`
    - Rope Type Value: `2`
    - Vertices: `32`
    - Radius: `0.025`
    - Texture Names: `steel_cable` & `steel_cable_n`

- Type: `rage__ropeMesh`
    - Rope Type Value: `3`
    - Vertices: `6`
    - Radius: `0.03`
    - Texture Names: `rope` & `rope_n`

- Type: `rage__ropeThinWire32`
    - Rope Type Value: `4`
    - Vertices: `32`
    - Radius: `0.01`
    - Texture Names: `rope` & `rope_n`

- Type: `rage__ropeReins`
    - Rope Type Value: `5`
    - Vertices: `32`
    - Radius: `0.005`
    - Texture Names: `rope` & `rope_n`

- Type: `rage__ropeThin4`
    - Rope Type Value: `6`
    - Vertices: `4`
    - Radius: `0.03`
    - Texture Names: `rope` & `rope_n`

- Type: `rage__ropeWire64`
    - Rope Type Value: `7`
    - Vertices: `64`
    - Radius: `0.025`
    - Texture Names: `steel_cable` & `steel_cable_n`

## Parameters
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **rotX**: Rotation X component.
* **rotY**: Rotation Y component.
* **rotZ**: Rotation Z component.
* **maxLength**: The maximum length the rope can droop.
* **ropeType**: The zero-based index of the entry in the `ropedata.xml` file. *NOTE: Using an index which does not exist will crash the game. As of right now, valid values are from `0` to `7` inclusive.*
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
RegisterCommand("new_rope", function(source, args, rawCommand)

    Citizen.CreateThread(function()
        -- Get the handle for the player's ped
        local pedHandle = PlayerPedId()

        -- Ensure that the rope textures are loaded
        local timer = 0
        while not RopeAreTexturesLoaded() and timer < 1000 do
            RopeLoadTextures()
            timer = timer + 1
            Citizen.Wait(0)
        end

        if not RopeAreTexturesLoaded() then
            -- Error handling for the edge case where rope textures are not able to be loaded
            print("Wasn't able to load rope textures!")
        else
            -- Get the coordinates for where the rope will be
            local ropePos = GetOffsetFromEntityInWorldCoords(pedHandle, 0.0, 2.0, 0.5)

            -- Create the rope
            local newRopeHandle = AddRope(
                ropePos.x, -- x
                ropePos.y, -- y
                ropePos.z, -- z
                0.0, -- rotX
                0.0, -- rotY
                0.0, -- rotZ
                10.0, -- maxLength
                1, -- ropeType
                10.0, -- initLength
                0.0, -- minLength
                1.0, -- lengthChangeRate
                false, -- onlyPPU
                false, -- collisionOn
                false, -- lockFromFront
                1.0, -- timeMultiplier
                false, -- breakable
                0 -- unkPtr
            )
        end
    end)

end, false)
```