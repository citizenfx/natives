---
ns: VEHICLE
aliases: ["0xF8EBCCC96ADB9FB7"]
---
## SET_VEHICLE_BULLDOZER_ARM_POSITION

```c
// 0xF8EBCCC96ADB9FB7 0xED23C8A3
void SET_VEHICLE_BULLDOZER_ARM_POSITION(Vehicle vehicle, float position, BOOL p2);
```

Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).


## Parameters
* **vehicle**:
* **position**:
* **p2**:

