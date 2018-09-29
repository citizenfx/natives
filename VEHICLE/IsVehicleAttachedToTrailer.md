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

## Parameters
* **vehicle**: 

## Return value
