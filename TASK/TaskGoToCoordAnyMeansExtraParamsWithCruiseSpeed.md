---
ns: TASK
---
## TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED

```c
// 0xB8ECD61F531A7B02 0x86DC03F9
void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED(Ped ped, float x, float y, float z, float fMoveBlendRatio, Vehicle vehicle, BOOL bUseLongRangeVehiclePathing, int drivingFlags, float fMaxRangeToShootTargets, cs_type(Any) float fExtraVehToTargetDistToPreferVeh, cs_type(Any) float fDriveStraightLineDistance, int iExtraFlags, cs_type(Any) float fCruiseSpeed, cs_type(Any) float fTargetArriveDist);
```

Same as `TASK_GO_TO_COORD_ANY_MEANS` but with cruise speed control and other parameters.

```c
enum eTaskGoToCoordAnyMeansFlags {
  TGCAM_DEFAULT = 0,
  // Ignore the health of the vehicle (default behaviour is to not use any vehicle with less than 600 health)
  TGCAM_IGNORE_VEHICLE_HEALTH = 1,
  // Considers all nearby vehicles for suitability (default behaviour is to consider only the vehicle closest to the ped)
  TGCAM_CONSIDER_ALL_NEARBY_VEHICLES = 2,
  // Performs the same tests as is done in IS_VEHICLE_DRIVEABLE (default behaviour is to just check the vehicle's health)
  TGCAM_PROPER_IS_DRIVEABLE_CHECK = 4,
  // Instructs the ped to remain in the vehicle at the end, so that multiple tasks can be chained together.
  TGCAM_REMAIN_IN_VEHICLE_AT_DESTINATION = 8,
  // Ped will never abandon the vehicle it is in.
  TGCAM_NEVER_ABANDON_VEHICLE = 16,
  // Ped will never abandon the vehicle it is in if vehicle is moving.
  TGCAM_NEVER_ABANDON_VEHICLE_IF_MOVING = 32,
  // Peds will use the targeting system for threats and register any threats they can attack (rather than just using the closest targetable ped)
  TGCAM_USE_AI_TARGETING_FOR_THREATS = 64
};
```

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
* **iExtraFlags**: See `TaskGoToCoordAnyMeansFlags` enum.
* **fCruiseSpeed**: The initial cruise speed of the vehicle 
* **fTargetArriveDist**:  The distance at which the pedestrian will quit the vehicle (by default 4 meters).

