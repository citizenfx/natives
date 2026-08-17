---
ns: TASK
---
## TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS

```c
// 0x1DD45F9ECFDB1BC9 0x094B75EF
void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(Ped ped, float x, float y, float z, float moveBlendRatio, Vehicle vehicle, BOOL useLongRangeVehiclePathing, int drivingFlags, float maxRangeToShootTargets, float extraVehToTargetDistToPreferVeh, float driveStraightLineDistance, int taskFlags, float warpTimerMS);
```

```c
enum eTaskGoToCoordAnyMeansFlags{
	TGCAM_DEFAULT                                   = 0,
	// Ignore the health of the vehicle (default behaviour is to not use any vehicle with less than 600 health)
	TGCAM_IGNORE_VEHICLE_HEALTH						= 1,
	// Considers all nearby vehicles for suitability (default behaviour is to consider only the vehicle closest to the ped)
	TGCAM_CONSIDER_ALL_NEARBY_VEHICLES				= 2,
	// Performs the same tests as is done in IS_VEHICLE_DRIVEABLE (default behaviour is to just check the vehicle's health)
	TGCAM_PROPER_IS_DRIVEABLE_CHECK					= 4,
	// Instructs the ped to remain in the vehicle at the end, so that multiple tasks can be chained together
	TGCAM_REMAIN_IN_VEHICLE_AT_DESTINATION			= 8,
	// Ped will never abandon the vehicle it is in
	TGCAM_NEVER_ABANDON_VEHICLE						= 16,
	// Ped will never abandon the vehicle it is in if vehicle is moving
	TGCAM_NEVER_ABANDON_VEHICLE_IF_MOVING			= 32,
	// Peds will use the targeting system for threats and register any threats they can attack (rather than just using the closest targetable ped)
	TGCAM_USE_AI_TARGETING_FOR_THREATS				= 64
}
```

## Parameters
* **ped**: The `Ped` Handle.
* **x**: The goto target x coordinate.
* **y**: The goto target y coordinate.
* **z**: The goto target z coordinate.
* **moveBlendRatio**: 0.0 = still, 1.0 = walk, 2.0 = run, 3.0 = sprint.
* **vehicle**: If defined, the pedestrian will only move if said vehicle exists. If you don't want any sort of association, just set it to `0`.
* **useLongRangeVehiclePathing**: Setting to `true` tells the vehicle to use longrange vehicle pathing. (default `false`)
* **drivingFlags**: See `eDrivingFlags` enum in [`TASK_GO_TO_COORD_ANY_MEANS`](#_0xF91DF93B). (default `786603`)
* **maxRangeToShootTargets**: Determines the maximum distance at which the `Ped` will engage in combat with threatening targets. (default `-1.0`)
* **extraVehToTargetDistToPreferVeh**: (default `0.0`)
* **driveStraightLineDistance**: allow script to define the distance at which vehicles switch to straight-line pathfinding; (default `20`)
* **taskFlags**: See `eTaskGoToCoordAnyMeansFlags` enum. (default `0`)
* **warpTimerMS**: Warps ped to target position if ped gets stuck for this amount of time (in milliseconds) (only if fWarpTimeMS != -1.0). Only works for peds on foot or in a car/bike (not aircraft/boats). Ped will be removed from vehicle on warp. (default `-1.0`)
