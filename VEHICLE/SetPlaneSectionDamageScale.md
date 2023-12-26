---
ns: VEHICLE
aliases: ["0x0BBB9A7A8FFE931B"]
---
## SET_PLANE_SECTION_DAMAGE_SCALE

```c
// 0x0BBB9A7A8FFE931B
void SET_PLANE_SECTION_DAMAGE_SCALE(Vehicle vehicle, int damageSection, cs_type(Any) float damageScale);
```

Adjusts the scale of damage applied to a specified section of a plane.
In the decompiled scripts the `damageScale` is always set to `0f` (maybe to disable damages on the specified section)

```c
enum ePlaneDamageSection {
    WING_L = 0,
    WING_R = 1,
    TAIL = 2,
    ENGINE_L = 3,
    ENGINE_R = 4,
    ELEVATOR_L = 5,
    ELEVATOR_R = 6,
    AILERON_L = 7,
    AILERON_R = 8,
    RUDDER = 9,
    RUDDER_2 = 10,
    AIRBRAKE_L = 11,
    AIRBRAKE_R = 12
}
```

```
NativeDB Introduced: v1290
```

## Parameters
* **vehicle**: Plane to which the damage scale adjustment will be applied.
* **damageSection**: Specific section of the plane, as defined in the `ePlaneDamageSection` enum, where the damage scale will be adjusted.
* **damageScale**: A float value representing the scale of damage to be applied to the specified section.

## Return value
This native does not return any value.
