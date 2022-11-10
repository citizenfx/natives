---
ns: VEHICLE
---
## SET_VEHICLE_EXTRA

```c
// 0x7EE3A3C5E4A40CC9 0x642D065C
void SET_VEHICLE_EXTRA(Vehicle vehicle, int extraId, BOOL disable);
```

```
Note: only some vehicle have extras  
extra ids are from 1 - 13 depending on the vehicle 
-------------------------------------------------
The method asks a question: Hide Extra?
0 answers No 
1 answers Yes
-------------------------------------------------  
Confirmed p2 does not work as a bool. Changed to int.
```

## Parameters
* **vehicle**: 
* **extraId**: 
* **disable**: 

