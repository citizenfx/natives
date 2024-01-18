---
ns: VEHICLE
---
## ATTACH_VEHICLE_TO_CARGOBOB

```c
// 0x4127F1D84E347769 0x607DC9D5
void ATTACH_VEHICLE_TO_CARGOBOB(Vehicle cargobob, Vehicle vehicle, int vehicleBoneIndex, float x, float y, float z);
```

## Parameters
* **cargobob**: The cargobob
* **vehicle**: The vehicle that will be attached
* **vehicleBoneIndex**: A Vehicle bone the hook/magnet should attach to or -1 for none/default [GET_ENTITY_BONE_INDEX_BY_NAME](#_0xFB71170B7E76ACBA)
* **x**: x hook/magnet Offset 
* **y**: y hook/magnet Offset
* **z**: z hook/magnet Offset


## Examples
```lua
function RequestVehicleModel(modelHash)
    if not IsModelInCdimage(modelHash) then return end
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do 
      Wait(0)
    end
end

RegisterCommand('spawnCargobob', function(source, args)
    local cargobobHash = `cargobob` 
    local carHash = `adder` 
    local myPed = PlayerPedId()

    local spawnCoords = GetEntityCoords(myPed)

    RequestVehicleModel(cargobobHash)
    local cargobob = CreateVehicle(cargobobHash, spawnCoords+vec3(0.0,0.0, 10.0), GetEntityHeading(myPed), true, false) -- Spawns a cargobob above players location
    SetHeliBladesSpeed(cargobob, 1.0) -- sets the helicoper blades to max spin speed
    SetPedIntoVehicle(myPed, cargobob, -1) -- sets the player into the cargobob
    SetModelAsNoLongerNeeded(cargobobHash) -- removes model from game memory as we no longer need it
    CreatePickUpRopeForCargobob(cargobob, 1) -- 0 = hook, 1 = Magnet Enable rope from cargobob

    RequestVehicleModel(carHash)
    local vehicle = CreateVehicle(carHash, spawnCoords, GetEntityHeading(myPed), true, false) -- Spawns a vehicle for the cargobob to pickup
    SetModelAsNoLongerNeeded(carHash)
    Wait(1000)
    AttachVehicleToCargobob(cargobob, vehicle, GetEntityBoneIndexByName(vehicle, 'bodyshell'), 0.0, 0.0, 0.0) --Attach the vehicle to the magnet or hook
end)
```

