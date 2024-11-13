---
ns: TASK
---
## TASK_PLANE_MISSION

```c
// 0x23703CD154E83B88 0x1D007E65
void TASK_PLANE_MISSION(Ped ped, Vehicle vehicle, Vehicle targetVehicle, Ped targetPed, float fTargetCoordX, float fTargetCoordY, float fTargetCoordZ, int iMissionIndex, float fCruiseSpeed, float fTargetReachedDist, float fOrientation, cs_type(float) int iFlightHeight, cs_type(float) int iMinHeightAboveTerrain, cs_split BOOL bPrecise);
```

Gives the plane a mission (purpose or objective), the mission is passed onto the `iMissionIndex` parameter.

```c
enum eVehicleMission {
    MISSION_NONE = 0,
    MISSION_CRUISE, // 1
    MISSION_RAM, // 2
    MISSION_BLOCK, // 3
    MISSION_GOTO, // 4
    MISSION_STOP, // 5
    MISSION_ATTACK, // 6
    MISSION_FOLLOW, // 7
    MISSION_FLEE, // 8
    MISSION_CIRCLE, // 9
    MISSION_ESCORT_LEFT, // 10
    MISSION_ESCORT_RIGHT, // 11
    MISSION_ESCORT_REAR, // 12
    MISSION_ESCORT_FRONT, // 13
    MISSION_GOTO_RACING, // 14
    MISSION_FOLLOW_RECORDING, // 15
    MISSION_POLICE_BEHAVIOUR, // 16
    MISSION_PARK_PERPENDICULAR, // 17
    MISSION_PARK_PARALLEL, // 18
    MISSION_LAND, // 19
    MISSION_LAND_AND_WAIT, // 20
    MISSION_CRASH, // 21
    MISSION_PULL_OVER, // 22
    MISSION_PROTECT // 23
};
```

## Parameters
* **ped**: The `Ped` handle.
* **vehicle**: The `Vehicle` handle for the actual plane that will be flown.
* **targetVehicle**: The target `Vehicle` handle (in case `eVehicleMission` requires one).
* **targetPed**: The target `Ped` (in case `eVehicleMission` requires one).
* **fTargetCoordX**: 
* **fTargetCoordY**: 
* **fTargetCoordZ**: 
* **iMissionIndex**: The mission to be executed. See `eVehicleMission`.
* **fCruiseSpeed**: The cruise speed (in m/s).
* **fTargetReachedDist**: Distance (in meters) (at which the plane thinks it has arrived), this is also used as the hover distance for `MISSION_ATTACK` and `MISSION_CIRCLE`.
* **fOrientation**: Used to specify the desired orientation of the plane in degrees (`0` to `360`). Use `-1` if no specific orientation is required.
* **iFlightHeight**: The height above sea level the plane tries to maintain, i.e. `50` meters.
* **iMinHeightAboveTerrain**: The minimum height above terrain, i.e. `30` meters.
* **bPrecise**: A boolean value, defaults to `true`.

