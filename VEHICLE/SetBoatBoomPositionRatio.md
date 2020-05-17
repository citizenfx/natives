---
ns: VEHICLE
aliases: ["0xF488C566413B4232"]
---
## _SET_BOAT_BOOM_POSITION_RATIO

```c
// 0xF488C566413B4232 0xA25CCB8C
void _SET_BOAT_BOOM_POSITION_RATIO(Vehicle vehicle, float ratio);
```

Sets the boat boom position for the `TR3` trailer.

Ratio value is between `0.0` and `1.0`, where `0.0` is 90 degrees to the left of the boat, and `1.0` is just slightly to the right/back of the boat.

To get the current boom position ratio, use [GET_BOAT_BOOM_POSITION_RATIO](#_0x6636C535F6CC2725).

## Parameters
* **vehicle**: The TR3 vehicle.
* **ratio**: A value between 0.0 (left) and 1.0 (back)

