---
ns: VEHICLE
---
## IS_VEHICLE_ATTACHED_TO_TRAILER

```c
// 0xE7CF3C4F9F489F0C 0xE142BBCC
BOOL IS_VEHICLE_ATTACHED_TO_TRAILER(Vehicle vehicle);
```

```
Public Function isVehicleAttachedToTrailer(vh As Vehicle) As Boolean  
Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ATTACHED_TO_TRAILER, vh)  
		    End Function  
```

```lua
local playerPed = PlayerPedId()
local myPos = GetEntityCoords(playerPed, true)
local truckHash = GetHashKey("phantom")

local closestTruck = GetClosestVehicle(myPos.x, myPos.y,myPos.z, 500.0, truckHash, 70)
local isTrailer = IsVehicleAttachedToTrailer(closestTruck)

print(isTrailer and "a trailer is attached" or "no trailer attached") -- return true if a trailer is attached to the nearest Phantom.
```

## Parameters
* **vehicle**: 

## Return value
return true if a trailer is attached to the selected vehicle. 
ex : phantom is attached to tanker2 : return true. When you destroy or detach tanker2 it's return false. 
