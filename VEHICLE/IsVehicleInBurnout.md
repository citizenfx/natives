---
ns: VEHICLE
---
## IS_VEHICLE_IN_BURNOUT

```c
// 0x1297A88E081430EB 0x6632BC12
BOOL IS_VEHICLE_IN_BURNOUT(Vehicle vehicle);
```

```
Returns whether the specified vehicle is currently in a burnout.  
vb.net  
Public Function isVehicleInBurnout(vh As Vehicle) As Boolean  
        Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)  
    End Function  
```

## Parameters
* **vehicle**: 

## Return value
