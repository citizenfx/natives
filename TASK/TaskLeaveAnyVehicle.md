---
ns: TASK
---
## TASK_LEAVE_ANY_VEHICLE

```c
// 0x504D54DF3F6F2247 0xDBDD79FA
void TASK_LEAVE_ANY_VEHICLE(Ped ped, int p1, int flags);
```

Flags are the same flags used in [TaskLeaveVehicle](#0xD3DBCE61A490BE02)

## Parameters
* **ped**: 
* **p1**: 
* **flags**: 

## Examples

```lua
-- If a player tries to enter a sultan, teleport them from the vehicle without closing / opening the door
Citizen.CreateThread(function()
    while true do
        local v = GetVehiclePedIsIn(PlayerPedId(), false)
        if DoesEntityExist(v) and GetEntityModel(v) == GetHashKey("sultan") then
            TaskLeaveAnyVehicle(PlayerPedId(), 1, 16)
        end

        Citizen.Wait(0)
    end
end)
```
