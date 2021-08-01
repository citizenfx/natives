---
ns: VEHICLE
aliases: ["SET_PED_TARGETTABLE_VEHICLE_DESTROY","_SET_VEHICLE_DOOR_DESTROY_TYPE"]
---
## SET_VEHICLE_INDIVIDUAL_DOORS_LOCKED

```c
// 0xBE70724027F85BCD 0xD61D182D
void SET_VEHICLE_INDIVIDUAL_DOORS_LOCKED(Vehicle vehicle, int doorIndex, int doorLockStatus);
```

## Parameters
* **vehicle**: 
* **doorIndex**: See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#_0x93D9BD300D7789E5)
* **doorLockStatus**: See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#_0xB664292EAECF7FA6)

