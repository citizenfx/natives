---
ns: CAM
aliases: ["0x5D96CFB59DA076A0"]
---
## TRIGGER_VEHICLE_PART_BROKEN_CAMERA_SHAKE

```c
// 0x5D96CFB59DA076A0
void TRIGGER_VEHICLE_PART_BROKEN_CAMERA_SHAKE(Vehicle vehicle, int vehiclePart, float amplitude);
```

Initiates a camera shake effect specifically tailored to the position of a broken part on a vehicle, enhancing the immersion of vehicle damage.

```
NativeDB Introduced: v2060
```

## Parameters
* **vehicle**: The entity handle of the vehicle experiencing the broken part. The camera shake effect only triggers if this is the player's vehicle.
* **vehiclePart**: The ID of the broken vehicle part. This ID should correspond with values from the eHierarchyId enum, indicating which specific part of the vehicle has been damaged.
* **amplitude**: The intensity of the camera shake effect. A value of 1.0 represents the default shake strength. Values between 0.0 and 1.0 reduce the shake intensity, while values above 1.0 enhance it.