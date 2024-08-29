---
ns: PED
---
## SET_PED_MIN_GROUND_TIME_FOR_STUNGUN

```c
// 0xFA0675AB151073FA 0x2F0D0973
void SET_PED_MIN_GROUND_TIME_FOR_STUNGUN(Ped ped, int ms);
```

Overwrites the minimum time the ped will stay on the ground for after being stunned. Setting this while the ped is stunned will not alter the duration of the current stun (but will still effect future stunns).

Unlike what this native's name suggests, it also effects the time for other "weapons", such as WEAPON_ELECTRIC_FENCE.

Passing a negative value (usually -1) into the second parameter (ms) will reset the ground time back to default (ground time will then depend on the weapon that inflicts the stun).

## Parameters
* **ped**: The ped to set the min ground time for
* **ms**: The minimum time in milliseconds

## Examples
```lua
-- This sets the minimum stun ground time for the player's ped to 10 seconds (and re-applies it if the player's ped changes)

local currentPed = 0
CreateThread(function()
    while true do
        local playerPed = PlayerPedId()

        -- Checks if the player ped has changed
        if currentPed ~= playerPed then
            currentPed = playerPed

            -- Sets the minimum stun ground time to 10 seconds
            SetPedMinGroundTimeForStungun(currentPed, 10000)
        end

        Wait(1000)
    end
end)
```

```js
// This sets the minimum stun ground time for the player's ped to 10 seconds (and re-applies it if the player's ped changes)

let currentPed = 0;
Delay = (ms) => new Promise(res => setTimeout(res, ms));

setTick(async () => {
    const playerPed = PlayerPedId();

    // Checks if the player ped has changed
    if (currentPed != playerPed) {
        currentPed = playerPed;

        // Sets the minimum stun ground time to 10 seconds
        SetPedMinGroundTimeForStungun(currentPed, 10000);
    };

    await Delay(1000);
});
```

```cs
// This sets the minimum stun ground time for the player's ped to 10 seconds (and re-applies it if the player's ped changes)

using static CitizenFX.Core.Native.API;
// ...

private int currentPed = 0;

public Main() 
{
    Tick += OnTick;
}

private async Task OnTick()
{
    var playerPed = Game.PlayerPed.Handle;

    // Checks if the player ped has changed
    if (currentPed != playerPed)
    {
        currentPed = playerPed;

        // Sets the minimum stun ground time to 10 seconds
        SetPedMinGroundTimeForStungun(currentPed, 10000);
    }

    await BaseScript.Delay(1000);
}
