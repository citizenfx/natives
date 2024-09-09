---
ns: PED
---
## SET_ENABLE_HANDCUFFS

```c
// 0xDF1AF8B5D56542FA 0xAC9BBA23
void SET_ENABLE_HANDCUFFS(Ped ped, BOOL toggle);
```

Sets the IsHandCuffed (120) config flag on the ped. This blocks the ped from switching weapons (with the exception of switching to `weapon_unarmed`), makes the ped ragdoll on getting punched and forces a different get-up animation after ragdolling. The ped can also not vault over or climb on top of objects.

Used in combination with [SET_ENABLE_BOUND_ANKLES](#_0xC52E0F855C58FC2E) in decompiled scripts.

## Parameters
* **ped**: The ped to toggle handcuffs on
* **toggle**: true to enable handcuffs, false to disable

## Examples
```lua
local playerId = PlayerId()
local isHandcuffed = false

local function whileCuffed()
    while isHandcuffed do
        local playerPed = PlayerPedId()
        if not (IsPedRagdoll(playerPed) or IsPedGettingUp(playerPed)) and not IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) then
            TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
        end

        DisablePlayerFiring(playerId, true)
        DisableControlAction(0, 140, true) -- INPUT_MELEE_ATTACK_LIGHT
        Wait(0)
    end
end

local function setPlayerInHandcuffs(state)
    local playerPed = PlayerPedId()
    SetEnableHandcuffs(playerPed, state)
    isHandcuffed = state

    if state then
        RequestAnimDict('mp_arresting')
        while not HasAnimDictLoaded('mp_arresting') do Wait(0) end
        SetCurrentPedWeapon(playerPed, `WEAPON_UNARMED`, true)
        CreateThread(whileCuffed)
    else
        RemoveAnimDict('mp_arresting')
        StopAnimTask(playerPed, 'mp_arresting', 'idle', 2.0)
    end
end

setPlayerInHandcuffs(true)
```
