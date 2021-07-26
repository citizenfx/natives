---
ns: VEHICLE
aliases: ["0x3A9128352EAC9E85"]
---
## _ARE_OUTRIGGER_LEGS_DEPLOYED

```c
// 0x3A9128352EAC9E85
BOOL _ARE_OUTRIGGER_LEGS_DEPLOYED(Vehicle vehicle);
```

Returns whether the outrigger legs are deployed for the vehicle.
The Chernobog is one of the few vehicles with outrigger legs.

```
NativeDB Introduced: v1290
```

## Parameters
* **vehicle**:

## Return value
The deployment state of the vehicle's outrigger legs

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
local deployed = AreOutriggerLegsDeployed(vehicle)
print("deploy state:", deployed)
```
