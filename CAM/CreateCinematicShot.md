---
ns: CAM
---
## CREATE_CINEMATIC_SHOT

```c
// 0x741B0129D4560F31 0xAC494E35
void CREATE_CINEMATIC_SHOT(Any shotType, int duration, Entity attachEntity, Entity lookAtEntity);
```

```
Creates a cinematic shot. This native is bound to a limit of 1 script. You can't create one if a script already has one.
Attach and look at entity: Depending on the shot you either provide one or two. If incorrectly applied the shot will just not trigger.
```

### Shot types:
- CAMERA_MAN_SHOT: Cinematic shot from ground level.
- HELI_CHASE_SHOT: Cinematic shot from top view. Inside a vehicle gets cancelled unless `lookAtEntity` parameter is set to the vehicle.
- SCRIPT_CAR_MOUNTED_SHOT: Never used, doesn't trigger anything.

## Parameters
* **shotType**: The desired shot type, should be in hash.
* **duration**: Duration of the shot in milliseconds.
* **attachEntity**: Attaches to the specified entity. Read description.
* **lookAtEntity**: Looks to the specified entity. Read description.

