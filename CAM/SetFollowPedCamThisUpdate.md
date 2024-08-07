---
ns: CAM
aliases: ["SET_FOLLOW_PED_CAM_CUTSCENE_CHAT"]
---
## SET_FOLLOW_PED_CAM_THIS_UPDATE

```c
// 0x44A113DD6FFC48D1 0x1425F6AC
BOOL SET_FOLLOW_PED_CAM_THIS_UPDATE(char* camName, int easeTime);
```

Overrides the ped follow camera (not first person camera) with the specified camera. The game loads all camera metadata from `update/update.rpf/x64/data/metadata/cameras.ymt` and `x64a.rpf/data/metadata/cameras.ymt` with the ped follow cameras being of type `camFollowPedCameraMetadata`.

| Follow Camera Names                          |
|----------------------------------------------|
| DEFAULT_FOLLOW_PED_CAMERA                    |
| FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
| FOLLOW_PED_ON_EXILE1_LADDER_CAMERA           |
| FOLLOW_PED_SKY_DIVING_CAMERA                 |
| FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA         |
| NIGHTCLUB_FOLLOW_PED_CAMERA                  |
| FOLLOW_PED_INTIMIDATION_CAMERA               |
| FOLLOW_PED_IN_WATER_CAMERA                   |
| FOLLOW_PED_PRONE_CAMERA                      |
| FOLLOW_PED_ON_SEAT_CAMERA                    |
| FOLLOW_PED_HANGING_UPSIDE_DOWN_CAMERA        |
| FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
| CUSTOM_TRANSITION_AFTER_WARP_SKY_DIVE_CAMERA |
| FOLLOW_PED_ON_HORSE_CAMERA                   |
| FOLLOW_PED_ON_LOUNGER_CAMERA                 |

Other camera hashes (names not found yet)
```c
// 0x5DBBFB6E
// 0xA38DB056
// 0x16B702A3
// 0x41D72A2E
```

## Parameters
* **camName**: The name of the camera to use this update
* **easeTime**: The time in milliseconds to ease in the camera

## Return value
Return `true` if the camera is set successfully and `false` otherwise.

## Examples
```lua
CreateThread(function()
    while true do
        SetFollowPedCamThisUpdate("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 500) -- Zoomed out the ped camera
        Wait(0)
    end
end)
