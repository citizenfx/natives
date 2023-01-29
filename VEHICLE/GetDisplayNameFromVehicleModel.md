---
ns: VEHICLE
---
## GET_DISPLAY_NAME_FROM_VEHICLE_MODEL

```c
// 0xB215AAC32D25D019 0xEC86DF39
char* GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(Hash modelHash);
```

Returns the display name/text label (`gameName` in `vehicles.meta`) for the specified vehicle model.

## Parameters
* **modelHash**: A vehicle model to check.

## Return value
The display name for the vehicle, or `'CARNOTFOUND'` if invalid.