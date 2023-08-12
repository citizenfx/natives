---
ns: CAM
aliases: ["0x79C0E43EB9B944E2"]
---
## _SET_CASINO_GAMES_CAMERA_THIS_UPDATE

```c
// 0x79C0E43EB9B944E2
BOOL _SET_CASINO_GAMES_CAMERA_THIS_UPDATE(Hash typeHash);
```

Makes the gameplay camera focus to casino's table game props every update. Call this function every frame.

Available hashes:
CASINO_INSIDE_TRACK_CAMERA
CASINO_SLOT_MACHINE_CAMERA 
CASINO_LUCKY_WHEEL_CAMERA
CASINO_POKER_CAMERA
CASINO_ROULETTE_CAMERA 
ARCADE_LOVE_PROFESSOR_P1_CAMERA
ARCADE_LOVE_PROFESSOR_P2_CAMERA

## Parameters
* **typeHash**: Which casino game prop the camera should focus to.

## Examples
```lua
local casinoInteriorID = GetInteriorAtCoords(1108.74, 217.37, -49.44)

while true do
	Wait(0)

	if GetInteriorFromEntity(PlayerPedId()) == casinoInteriorID then -- Make sure we're in the casino
		SetCasinoGamesCameraThisUpdate(`CASINO_SLOT_MACHINE_CAMERA`) -- Make the gameplay camera focus on the closest slot machine
	end
end
```