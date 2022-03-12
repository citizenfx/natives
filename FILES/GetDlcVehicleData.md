---
ns: FILES
---
## GET_DLC_VEHICLE_DATA

```c
// 0x33468EDC08E371F6 0xCF428FA4
BOOL GET_DLC_VEHICLE_DATA(int dlcVehicleIndex, Any* outData);
```

The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.

## Parameters
* **dlcVehicleIndex**: takes a number from 0 to `GET_NUM_DLC_VEHICLES()` - 1.
* **outData**: a struct of 3 8-byte items.

## Return value
A boolean value return if find or not the dlcVehicleIndex.
