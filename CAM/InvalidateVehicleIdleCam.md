---
ns: CAM
aliases: ["0x9E4CFFF989258472"]
---
## _INVALIDATE_VEHICLE_IDLE_CAM

```c
// 0x9E4CFFF989258472 0x65DDE8AF
void _INVALIDATE_VEHICLE_IDLE_CAM();
```

Resets the vehicle idle camera timer. Calling this in a loop will disable the idle camera.

## Examples
```lua
Citizen.CreateThread(function()
	while true do
		InvalidateIdleCam()
		InvalidateVehicleIdleCam()
		Wait(1000) --The idle camera activates after 30 second so we don't need to call this per frame
	end
end)
```
