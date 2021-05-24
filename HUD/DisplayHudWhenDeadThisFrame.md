---
ns: HUD
aliases: ["0x7669F9E39DC17063"]
---
## _DISPLAY_HUD_WHEN_DEAD_THIS_FRAME

```c
// 0x7669F9E39DC17063 0xC380AC85
void _DISPLAY_HUD_WHEN_DEAD_THIS_FRAME();
```

Enables drawing some hud components, such as help labels, this frame, when the player is dead.

## Examples
```lua
Citizen.CreateThread(function()
	while true do
		N_0x7669f9e39dc17063()
		Wait(0)
	end
end)
```
