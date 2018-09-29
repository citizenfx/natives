---
ns: VEHICLE
---
## IS_VEHICLE_ON_ALL_WHEELS

```c
// 0xB104CD1BABF302E2 0x10089F8E
BOOL IS_VEHICLE_ON_ALL_WHEELS(Vehicle vehicle);
```

```
Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean  
Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)  
		    End Function  
```

## Parameters
* **vehicle**: 

## Return value
