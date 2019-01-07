---
ns: OBJECT
aliases: ["0x260EE4FDBDF4DB01"]
---
## _GET_DES_OBJECT_ANIM_PROGRESS


```c
// 0x260EE4FDBDF4DB01 0x020497DE
float _GET_DES_OBJECT_ANIM_PROGRESS(int desObjectHandle);
```


## Parameters
* **desObjectHandle**: The des-object handle to get the animation progress from.

## Return value
A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.

## Examples
```lua
local handle = GetDesObject(7.25, -656.98, 17.14, 50.0, "des_finale_tunnel")
local handle2 = GetDesObject(7.25, -656.98, 17.14, 50.0, "des_finale_vault")

SetDesObjectState(handle, 4) -- set to pre-start state
SetDesObjectState(handle2, 4) -- set to pre-start state

Citizen.Wait(100)

SetDesObjectState(handle, 6) -- set to start animation state.
SetDesObjectState(handle2, 6) -- set to start animation state.

Citizen.CreateThread(function()
    Citizen.Wait(10)
    while GetDesObjectAnimProgress(handle) > 0.0 do
        Citizen.Wait(0)
    end
    print("Animation 1 is done!")
    while GetDesObjectAnimProgress(handle2) > 0.0 do
        Citizen.Wait(0)
    end
    print("Animation 2 is done!")
end)

```