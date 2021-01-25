---
ns: VEHICLE
---
## CREATE_VEHICLE

```c
// 0xAF35D0D2583051B0 0xDD75460A
Vehicle CREATE_VEHICLE(Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL netMissionEntity);
```

Creates a vehicle at the specified coords

## Parameters
* **modelHash**: The model hash of the vehicle you are trying to create.
* **x**: The x coords of the vehicle.
* **y**: The y coords of the vehicle.
* **z**: The z coords of the vehicle.
* **heading**: The heading of the vehicle.
* **isNetwork**: Whether the vehicle is networked or not.
* **netMissionEntity**: Whether the vehicle is mission entity or not.

## Return value
The created vehicle.

## Examples
```lua
local ModelHash = `adder` -- Use Compile-time hashes to get the hash of this model
if not IsModelInCdimage(ModelHash) then return end
RequestModel(ModelHash) -- Request the model
while not HasModelLoaded(ModelHash) do -- Waits for the model to load with a check so it does not get stuck in an infinite loop
  Citizen.Wait(10)
end
local MyPed = PlayerPedId()
local Vehicle = CreateVehicle(ModelHash, GetEntityCoords(MyPed), GetEntityHeading(MyPed), true, false) -- Spawns a networked vehicle on your current coords
SetModelAsNoLongerNeeded(ModelHash) -- removes model from game memory as we no longer need it
```
