---
ns: VEHICLE
aliases: ["0xD0917A423314BBA8", "_GET_ARE_BOMB_BAY_DOORS_OPEN"]
---
## _ARE_BOMB_BAY_DOORS_OPEN

```c
// 0xD0917A423314BBA8
BOOL _ARE_BOMB_BAY_DOORS_OPEN(Vehicle aircraft);
```

Returns true when the bomb bay doors of this plane are open. False if they're closed.

## Parameters
* **aircraft**: The vehicle to check the bomb bay doors on.

## Return value
A bool indicating the state of the doors (true = open, false = closed).

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

if AreBombBayDoorsOpen(vehicle) then
    print("The doors are open!")
else
    print("The doors are closed!")
end

```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

if (AreBombBayDoorsOpen(vehicle))
{
    Debug.WriteLine("The doors are open!");
}
else
{
    Debug.WriteLine("The doors are closed!");
}
```
