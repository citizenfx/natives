---
ns: CAM
aliases: ["0xF4F2C0D4EE209E20"]
---
## INVALIDATE_IDLE_CAM

```c
// 0xF4F2C0D4EE209E20 0xD75CDD75
void INVALIDATE_IDLE_CAM();
```

Resets the idle camera timer. Calling this in a loop will disable the idle camera.

## Examples
```lua
Citizen.CreateThread(function() 
	while true do
		InvalidateIdleCam()
		N_0x9e4cfff989258472() --Disable the vehicle idle camera
		Wait(1000) --The idle camera activates after 30 second so we don't need to call this per frame
	end 
end)
```