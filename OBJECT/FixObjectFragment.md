---
ns: OBJECT
aliases: ["0xF9C1681347C8BD15"]
---
## FIX_OBJECT_FRAGMENT

```c
// 0xF9C1681347C8BD15
void FIX_OBJECT_FRAGMENT(Object object);
```

Resets and brings back all the children of a fragment based object.
This should be used when attaching or detaching an object from another entity, especially when the object being detached consists of multiple fragments.

Attempting to teleport a fragment-based object using [`SET_ENTITY_COORDS`](#_0x06843DA7060A026B) such as a flag object, will result in it remaining in place and failing to teleport, given the condition mentioned in the preceding statement.

The native should be executed after detaching the object from its parent entity and before calling [`SET_ENTITY_COORDS`](#_0x06843DA7060A026B).

Example given down below.


## Parameters
* **object**: The object to fix fragments for (a handle should be passed).

## Examples
```lua
RegisterCommand("fixobject", function(source, args, rawCommand)
    -- prop_flag_ls does not get teleported after being attached to the player
    -- prop_beachflag_01 only the pole gets teleported after being attached to the player
    local modelHash = `prop_beachflag_01`
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do
            Citizen.Wait(1)
        end
    end

    -- Set argument 1 to 0 if you wish to see what occurs when fragments aren't fixed.
    -- i.e. /fixobject 0
    local shouldFixFragments = tonumber(args[1]) or true
    
    local entity = CreateObject(modelHash, GetEntityCoords(PlayerPedId()), true, false, false)
    AttachEntityToEntity(
        entity,
        PlayerPedId(),
        GetPedBoneIndex(PlayerPedId(), 0x796E), --0x796E
        0.0, 0.0, 0.1, -- offset attachment for the first entity
        0.0, 0.0, 0.0, 
        false, 
        false, 
        false, 
        false, 
        1, -- rotation order
        true, 
        false
    )
    
    Citizen.SetTimeout(5000, function()
        DetachEntity(entity, true, true)
        Citizen.Trace("Detaching entity...")
    end)

    Citizen.SetTimeout(8000, function()
        local coords = GetEntityCoords(PlayerPedId())
        Citizen.Trace(
            string.format("Setting coords to %f %f %f...", coords.x, coords.y, coords.z)
        )
        if shouldFixFragments then
            Citizen.Trace("Fixing fragments for entity...")
            FixObjectFragment(entity)
        end
        SetEntityCoords(entity, coords, false, false, false, true)
        FreezeEntityPosition(entity, true)
    end)
end, false)
```
