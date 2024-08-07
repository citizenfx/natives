---
ns: VEHICLE
---
## _GET_VEHICLE_DRIVETRAIN_TYPE

```c
// 0x1423725069EE1D14
int _GET_VEHICLE_DRIVETRAIN_TYPE(Hash vehicleModel);
```

```
NativeDB Introduced: v3258
```

**Note**: When using this native, the hash of the vehicle needs to be loaded into the client's memory. This can be done by requesting the model with [`REQUEST_MODEL`](#_0x963D27A58DF860AC) or by simply having the vehicle spawned.

```c

enum eVehicleDrivetrainType
{
	VehicleDrivetrainType_INVALID = 0,
	VehicleDrivetrainType_FWD,
	VehicleDrivetrainType_RWD,
	VehicleDrivetrainType_AWD
};
```

```
NativeDB Introduced: v3258
```

## Parameters
* **vehicleModel**: The hash of the vehicle model to check.

## Return value
Returns the vehicle's drivetrain type.

## Examples
```lua
local vehicleHash = GetHashKey("elegy")
RequestModel(vehicleHash)
repeat
    Wait(0)
until HasModelLoaded(vehicleHash)

local driveTrainType = GetVehicleDriveTrainType(vehicleHash)

if driveTrainType == 1 then
    -- FWD
    print(GetLabelText("FMMC_DT_FWD"))
elseif driveTrainType == 2 then
    -- RWD
    print(GetLabelText("FMMC_DT_RWD"))
elseif driveTrainType == 3 then
    -- AWD
    print(GetLabelText("FMMC_DT_AWD"))
else
    print("invalid")
end
```