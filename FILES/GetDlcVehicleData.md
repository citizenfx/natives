---
ns: FILES
---
## GET_DLC_VEHICLE_DATA

```c
// 0x33468EDC08E371F6 0xCF428FA4
BOOL GET_DLC_VEHICLE_DATA(int dlcVehicleIndex, int* outData);
```

```
dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1.  
outData is a struct of 3 8-byte items.  
The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.  
```

## Parameters
* **dlcVehicleIndex**: 
* **outData**: 

## Return value
