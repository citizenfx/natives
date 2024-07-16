---
ns: HUD
aliases: ["0xCC3FDDED67BCFC63", "_ALLOW_PAUSE_MENU_WHEN_DEAD_THIS_FRAME"]
---
## ALLOW_PAUSE_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME

```c
// 0xCC3FDDED67BCFC63 0x630CD8EE
void ALLOW_PAUSE_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME();
```

Allows opening the pause menu this frame, when the player is dead.

## Examples
```lua
Citizen.CreateThread(function()
	while true do
		N_0xcc3fdded67bcfc63()
		Wait(0)
	end
end)
```
