---
ns: CAM
aliases: ["0x79C0E43EB9B944E2"]
---
## SET_TABLE_GAMES_CAMERA_THIS_UPDATE

```c
// 0x79C0E43EB9B944E2
BOOL SET_TABLE_GAMES_CAMERA_THIS_UPDATE(Hash hash);
```

Override the camera work of the third-person camera to table game for current frame only.

|                  HashKey                    |       Hash        |    Game         |
| :---------------------------------: | :-----------:| :-------------:  |
| `CASINO_LUCKY_WHEEL_CAMERA` |   `5891389`   |  Lucky Wheel    |
| `CASINO_SLOT_MACHINE_CAMERA` |  `518572876`  |     Slots       |
| `CASINO_ROULETTE_CAMERA` |   `71681063`  |    Roulette     |
| `CASINO_BLACKJACK_CAMERA` | `-2124244681` |    Blackjack    |
| `CASINO_POKER_CAMERA` | `-1938411241` |   Three Cards   |
| `CASINO_INSIDE_TRACK_CAMERA` | `1929822423` |   Inside Track    |
| `ARCADE_LOVE_PROFESSOR_P1_CAMERA` | `545868034` |   LoveProfessorP1   |
| `ARCADE_LOVE_PROFESSOR_P2_CAMERA` | `935304251` |   LoveProfessorP2   |

## Parameters
* **hash**: Hash for table game

## Return value
Returns a boolean value indicating if the camera settings were successfully overriden for this current frame.

## Examples
```lua
CreateThread(function()
    while true do
      -- override to lucky wheel camera work
      SetTableGamesCameraThisUpdate(GetHashKey("CASINO_LUCKY_WHEEL_CAMERA"))
      Wait(0)
    end
end)
```
