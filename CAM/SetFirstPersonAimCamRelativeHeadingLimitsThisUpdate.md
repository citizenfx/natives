---
ns: CAM
aliases: ["0x2F7F2B26DD3F18EE"]
---
## SET_FIRST_PERSON_AIM_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE

```c
// 0x2F7F2B26DD3F18EE 0x2F29F0D5
void SET_FIRST_PERSON_AIM_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(float minRelativeHeading, float maxRelativeHeading);
```

Adjusts the horizontal (yaw) limits of the first-person aim camera's movement for the current frame only, specifying how far left or right the camera can turn relative to its current heading.

```
NativeDB Introduced: v323
```

## Parameters
* **minRelativeHeading**: The minimum relative heading angle (in degrees) that the first-person aim camera can turn towards the left. Negative values allow turning further to the left.
* **maxRelativeHeading**: The maximum relative heading angle (in degrees) that the first-person aim camera can turn towards the right. Positive values allow turning further to the right.

## Examples
```lua
Citizen.CreateThread(function()
    while true do
        Wait(0)
        -- Restrict first-person aim camera movement to 30 degrees left and 45 degrees right for this frame.
        SetFirstPersonAimCamRelativeHeadingLimitsThisUpdate(-30.0, 45.0)
    end
end)
```

```js
setInterval(() => {
    // Restrict first-person aim camera movement to 30 degrees left and 45 degrees right for this frame.
    SetFirstPersonAimCamRelativeHeadingLimitsThisUpdate(-30.0, 45.0);
});
```