---
ns: OBJECT
aliases: ["0x260EE4FDBDF4DB01", "_GET_DES_OBJECT_ANIM_PROGRESS"]
---
## GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE

```c
// 0x260EE4FDBDF4DB01 0x020497DE
float GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE(Object object);
```

```
`object`: The des-object handle to get the animation progress from.
Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
```

## Parameters
* **object**: The des-object handle to get the animation progress from.

## Return value
A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.

## Examples
```lua
local handle = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_tunnel")
local handle2 = GetRayfireMapObject(7.25, -656.98, 17.14, 50.0, "des_finale_vault")

SetStateOfRayfireMapObject(handle, 4) -- set to pre-start state
SetStateOfRayfireMapObject(handle2, 4) -- set to pre-start state

Citizen.Wait(100)

SetStateOfRayfireMapObject(handle, 6) -- set to start animation state.
SetStateOfRayfireMapObject(handle2, 6) -- set to start animation state.

Citizen.CreateThread(function()
    Citizen.Wait(10)
    while GetRayfireMapObjectAnimPhase(handle) > 0.0 do
        Citizen.Wait(0)
    end
    print("Animation 1 is done!")
    while GetRayfireMapObjectAnimPhase(handle2) > 0.0 do
        Citizen.Wait(0)
    end
    print("Animation 2 is done!")
end)

```