---
ns: VEHICLE
aliases: ["0x16B5E274BDE402F8"]
---
## ATTACH_VEHICLE_ON_TO_TRAILER

```c
// 0x16B5E274BDE402F8 0x12AC1A16
void ATTACH_VEHICLE_ON_TO_TRAILER(Vehicle vehicle, Vehicle trailer, float offsetX, float offsetY, float offsetZ, float coordsX, float coordsY, float coordsZ, float rotationX, float rotationY, float rotationZ, float disableColls);
```

## Parameters
* **vehicle**: The vehicle to attach to the trailer
* **trailer**: The trailer to attach the vehicle to
* **offsetX**: The x offset of the vehicle
* **offsetY**: The y offset of the vehicle
* **offsetZ**: The z offset of the vehicle
* **coordsX**: The x coords of where you want the vehicle placed (must be an offset from the trailer itself)
* **coordsY**: The y coords of where you want the vehicle placed (must be an offset from the trailer itself)
* **coordsZ**: The z coords of where you want the vehicle placed (must be an offset from the trailer itself)
* **rotationX**: The x rotation of where you want the vehicle placed
* **rotationY**: The y rotation of where you want the vehicle placed
* **rotationZ**: The z rotation of where you want the vehicle placed
* **disableColls**: Should actually be a boolean, this will disable the collision between the vehicle you're attaching and the trailer

This is the proper way of attaching vehicles to the car carrier, it's what Rockstar uses. [Video Demo](https://www.youtube.com/watch?v=2lVEIzf7bgo)

## Examples
```lua
-- Request the model before creating it
local truckTrailer = CreateVehicle(`tr2`, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.0), true)

-- Open the rear ramp so you can drive a vehicle on
SetVehicleDoorOpen(truckTrailer, 5, false, false)

-- Get the vehicle you're in and it's coords and rotation
local veh = GetVehiclePedIsIn(PlayerPedId())
local vehCoords = GetEntityCoords(veh)
local vehRotation = GetEntityRotation(veh)

-- Park the car where on the trailer you want it, you could make sure your vehicle is touching the trailer first using "IsEntityTouchingEntity"
AttachVehicleOnToTrailer(veh, truckTrailer, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(truckTrailer, vehCoords), vehRotation, false)

-- Do the following to detach the vehicle from the trailer
DetachEntity(veh, true, false)
```