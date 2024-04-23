---
ns: TASK
---
## TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS

```c
// 0x1DD45F9ECFDB1BC9 0x094B75EF
void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(Ped ped, float x, float y, float z, float fMoveBlendRatio, Vehicle vehicle, BOOL bUseLongRangeVehiclePathing, int drivingFlags, float fMaxRangeToShootTargets, cs_type(Any) float fExtraVehToTargetDistToPreferVeh, cs_type(Any) float fDriveStraightLineDistance, int iExtraFlags, cs_type(Any) float fWarpTimerMS);
```

Same as `TASK_GO_TO_COORD_ANY_MEANS` but with extra parameters.


## Parameters
* **ped**: The `Ped` Handle.
* **x**: The goto target coordinate.
* **y**: The goto target coordinate.
* **z**: The goto target coordinate.
* **fMoveBlendRatio**: 0.0 = still, 1.0 = walk, 2.0 = run, 3.0 = sprint.
* **vehicle**: If defined, the pedestrian will only move if said vehicle exists. If you don't want any sort of association, just set it to `0`.
* **bUseLongRangeVehiclePathing**: Setting to `true` tells the vehicle to use longrange vehicle pathing.
* **drivingFlags**: See `eDrivingMode` enum in the following native [`TASK_GO_TO_COORD_ANY_MEANS`](#_0x5BC448CB78FA3E88). 
* **fMaxRangeToShootTargets**: Determines the maximum distance at which the `Ped` will engage in combat with threatening targets.
* **fExtraVehToTargetDistToPreferVeh**:
* **fDriveStraightLineDistance**: 
* **iExtraFlags**: See `TaskGoToCoordAnyMeansFlags` enum located at [`TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED`](#_0xB8ECD61F531A7B02).
* **fWarpTimerMS**: If the ped is stuck for that amount of milliseconds, it gets warped to the targeted position. Doesn't work if the ped is in a aircraft nor a boat.

