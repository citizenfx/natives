---
ns: PED
---
## IS_PED_IN_ANY_VEHICLE

```c
// 0x997ABD671D25CA0B 0x3B0171EE
BOOL IS_PED_IN_ANY_VEHICLE(Ped ped, BOOL atGetIn);
```

Returns whether the specified ped is in any vehicle. If `atGetIn` is set to true, also returns true if the ped is
currently in the process of entering a vehicle (a specific stage check for `CTaskEnterVehicle`).

## Parameters
* **ped**: The ped to check.
* **atGetIn**: `true` to also consider attempting to enter a vehicle. 

## Return value
Whether or not the ped is currently involved in any vehicle.

## Examples
```lua
if IsPedInAnyVehicle(PlayerPedId(), false) then
    print('Local player is in a vehicle!')
end
```