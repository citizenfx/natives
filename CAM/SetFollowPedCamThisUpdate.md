---
ns: CAM
aliases: ["SET_FOLLOW_PED_CAM_CUTSCENE_CHAT"]
---
## SET_FOLLOW_PED_CAM_THIS_UPDATE

```c
// 0x44A113DD6FFC48D1 0x1425F6AC
BOOL SET_FOLLOW_PED_CAM_THIS_UPDATE(char* camName, int easeTime);
```

```c
enum ePedCameras {
    "FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA",
    "FOLLOW_PED_ON_EXILE1_LADDER_CAMERA",
    "FOLLOW_PED_SKY_DIVING_CAMERA",
    "FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA"
    "NIGHTCLUB_FOLLOW_PED_CAMERA",
    "FOLLOW_PED_INTIMIDATION_CAMERA"
}
```

## Parameters
* **camName**: The name of the camera to use this update
* **easeTime**: The time (in ms) to ease in the camera

## Return value

## Examples
```lua
-- Example with zoomed out camera
while true do
    SetFollowPedCamThisUpdate("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 500)
    Citizen.Wait(0)
end
```
