---
ns: VEHICLE
aliases: ["0x53952FD2BAA19F17", "_GET_VEHICLE_SUSPENSION_HEIGHT"]
---
## GET_FAKE_SUSPENSION_LOWERING_AMOUNT

```c
// 0x53952FD2BAA19F17 0xB73A1486
float GET_FAKE_SUSPENSION_LOWERING_AMOUNT(Vehicle vehicle);
```

```
Gets the height of the vehicle's suspension.  
The higher the value the lower the suspension. Each 0.002 corresponds with one more level lowered.  
0.000 is the stock suspension.  
0.008 is Ultra Suspension.  
```

## Parameters
* **vehicle**: 

## Return value
