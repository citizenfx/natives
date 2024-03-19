---
ns: CAM
aliases: ["0x1F2300CB7FA7B7F6"]
---
## IS_IN_VEHICLE_MOBILE_PHONE_CAMERA_RENDERING

```c
// 0x1F2300CB7FA7B7F6 0x6739AD55
cs_type(Any) BOOL IS_IN_VEHICLE_MOBILE_PHONE_CAMERA_RENDERING();
```

Determines if the in-vehicle mobile phone camera was rendering during the last frame.

```
NativeDB Introduced: v323
```

## Return value
Returns `true` if the in-vehicle mobile phone camera was active and rendering in the last frame, otherwise `false`.