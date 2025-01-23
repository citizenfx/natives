---
ns: VEHICLE
aliases: ["0xEEBFC7A7EFDC35B4"]
---
## GET_VEHICLE_COLOURS_WHICH_CAN_BE_SET

```c
// 0xEEBFC7A7EFDC35B4 0x749DEEA2
int GET_VEHICLE_COLOURS_WHICH_CAN_BE_SET(Vehicle vehicle);
```

```c
enum eColourBitField {
    HAS_BODY_COLOUR1 = 1,
    HAS_BODY_COLOUR2 = 2,
    HAS_BODY_COLOUR3 = 4,
    HAS_BODY_COLOUR4 = 8,
    HAS_BODY_COLOUR5 = 16
}
```

## Parameters
* **vehicle**: The vehicle handle

## Return value
Returns a bitfield of the colours supported by the vehicle's shader.