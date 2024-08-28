---
ns: VEHICLE
---
## _GET_REMAINING_NITROUS_DURATION

```c
// 0xBEC4B8653462450E
float _GET_REMAINING_NITROUS_DURATION(Vehicle vehicle);
```

```
NativeDB Introduced: 3095
```

Retrieves the remaining duration of nitrous boost available for the specified vehicle.

## Parameters
* **vehicle**: The vehicle for which to retrieve the remaining nitrous duration.

## Return value
The amount of time that the nitrous boost can still be active for the given vehicle. If there is no nitrous system active or available, this may return `0`.

```lua
CreateThread(function()
    local playerPed, vehicle
    while true do
        -- Retrieve the player ped.
        playerPed = PlayerPedId()

        -- Retrieve the vehicle the player is currently in.
        vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Retrieve if the nitrous of the vehicle is active.
        if IsNitrousActive(vehicle) then
            print(GetRemainingNitrousDuration(vehicle))
        end

        Wait(0)
    end
end)
```

```js
setTick(async () => {
    // Retrieve the player ped.
    let playerPed = PlayerPedId();
    
    // Retrieve the vehicle the player is currently in.
    let vehicle = GetVehiclePedIsIn(playerPed, false);

    // Retrieve if the nitrous of the vehicle is active.
    if (IsNitrousActive(vehicle)) {
        console.log(GetRemainingNitrousDuration(vehicle));
    }
});
```
