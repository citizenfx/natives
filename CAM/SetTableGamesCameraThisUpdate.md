---
ns: CAM
aliases: ["0x79C0E43EB9B944E2"]
---
## SET_TABLE_GAMES_CAMERA_THIS_UPDATE

```c
// 0x79C0E43EB9B944E2
BOOL SET_TABLE_GAMES_CAMERA_THIS_UPDATE(Hash typeHash);
```

Makes the gameplay camera focus on a casino table game object, depending on the type.
Call this native every frame.

### Availables hashes:
- CASINO_INSIDE_TRACK_CAMERA
- CASINO_SLOT_MACHINE_CAMERA
- CASINO_LUCKY_WHEEL_CAMERA
- CASINO_BLACKJACK_CAMERA
- CASINO_ROULETTE_CAMERA
- CASINO_POKER_CAMERA
- ARCADE_LOVE_PROFESSOR_P1_CAMERA
- ARCADE_LOVE_PROFESSOR_P2_CAMERA

## Parameters
* **typeHash**: Which table game object to focus on

## Return value
True if the camera settings were successfully updated.
