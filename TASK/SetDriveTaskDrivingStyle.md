---
ns: TASK
---
## SET_DRIVE_TASK_DRIVING_STYLE

```c
// 0xDACE1BE37D88AF67 0x59C5FAD7
void SET_DRIVE_TASK_DRIVING_STYLE(Ped ped, int drivingStyle);
```

Sets the driving style for a ped currently performing a driving task.

Each flag in the `VehicleDrivingFlags` enum can be combined to create a driving style, with each enabling or disabling a specific driving behavior. The driving style can be set to one of the predefined driving styles, or a custom driving style can be created by combining the flags. This can be done by using the bitwise OR operator (`|`) to combine the flags or by adding the decimal values of the flags together.

```c
enum VehicleDrivingFlags
{
  None = 0,
  StopForVehicles = 1,
  StopForPeds = 2,
  SwerveAroundAllVehicles = 4,
  SteerAroundStationaryVehicles = 8,
  SteerAroundPeds = 16,
  SteerAroundObjects = 32,
  DontSteerAroundPlayerPed = 64,
  StopAtTrafficLights = 128,
  GoOffRoadWhenAvoiding = 256,
  AllowGoingWrongWay = 512,
  Reverse = 1024,
  UseWanderFallbackInsteadOfStraightLine = 2048,
  AvoidRestrictedAreas = 4096,
  PreventBackgroundPathfinding = 8192,
  AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
  UseShortCutLinks = 262144,
  ChangeLanesAroundObstructions = 524288,
  UseSwitchedOffNodes = 2097152,
  PreferNavmeshRoute = 4194304,
  PlaneTaxiMode = 8388608,
  ForceStraightLine = 16777216,
  UseStringPullingAtJunctions = 33554432,
  TryToAvoidHighways = 536870912,
  ForceJoinInRoadDirection = 1073741824,
  StopAtDestination = 2147483648,
  // StopForVehicles | StopForPeds | SteerAroundObjects | SteerAroundStationaryVehicles | StopAtTrafficLights | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeStopForVehicles = 786603,
  // StopForVehicles | StopForPeds | StopAtTrafficLights | UseShortCutLinks
  DrivingModeStopForVehiclesStrict = 262275,
  // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehicles = 786469,
  // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeAvoidVehiclesReckless = 786468,
  // StopForVehicles | SteerAroundStationaryVehicles | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeStopForVehiclesIgnoreLights = 786475,
  // SwerveAroundAllVehicles | StopAtTrafficLights | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehiclesObeyLights = 786597,
  // SwerveAroundAllVehicles | StopAtTrafficLights | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehiclesStopForPedsObeyLights = 786599,
}
```

## Parameters
* **ped**: The ped to have their driving style set.
* **drivingStyle**: The driving style (see `VehicleDrivingFlags`).

## Examples

```lua
local model = `adder`
RequestModel(model)
repeat Wait(0) until HasModelLoaded(model)
local ped = PlayerPedId() -- Player needs to be in a vehicle for this to work
local coords = GetEntityCoords(ped) - GetEntityForwardVector(ped) * 15.0
local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, GetEntityHeading(ped), true, false)
model = `a_m_m_skater_01`
RequestModel(model)
repeat Wait(0) until HasModelLoaded(model)
local driver = CreatePedInsideVehicle(vehicle, 0, model, -1, true, false)
TaskVehicleChase(driver, ped)
SetDriveTaskDrivingStyle(driver, 786468) -- DrivingModeAvoidVehiclesReckless
SetPedKeepTask(driver, true)
```
