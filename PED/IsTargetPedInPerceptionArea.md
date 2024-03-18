---
ns: PED
aliases: ["0x06087579E7AA85A9"]
---
## IS_TARGET_PED_IN_PERCEPTION_AREA

```c
// 0x06087579E7AA85A9 0xD0567D41
BOOL IS_TARGET_PED_IN_PERCEPTION_AREA(Ped ped, Ped targetPed, float focusAngle, float focusDistance, float peripheralAngle, float peripheralDistance);
```
```
This native checks if a specified targetPed is within the perception area of the ped specified in the first parameter.
```

## Parameters
* **ped**: The ped within whose perception area the targetPed is or isn't.
* **targetPed**: The ped whose presence in the perception area is being checked.
* **focusAngle**: Angle in Degrees of the perception area of ped. -1.0 if Default.
* **focusDistance**: Distance of perception area of ped. -1.0 if Default.
* **peripheralAngle**: Angle in Degrees for peripheral vision. -1.0 if Default.
* **peripheralDistance**: Distance of the peripheral vision of ped. -1.0 if Default.

## Return value
Returns true if targetPed is within the perception area of Ped. False otherwise.
