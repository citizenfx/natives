---
ns: CAM
aliases: ["0xF4F2C0D4EE209E20"]
---
## INVALIDATE_IDLE_CAM

```c
// 0xF4F2C0D4EE209E20 0xD75CDD75
void INVALIDATE_IDLE_CAM();
```

Resets the idle camera timer. Calling that in a loop once every few seconds is enough to disable the idle cinematic camera.

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
