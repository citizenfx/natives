---
ns: CAM
aliases: ["0x1C9D7949FA533490"]
---
## STOP_SCRIPT_GLOBAL_SHAKING

```c
// 0x1C9D7949FA533490 0x26FCFB96
void STOP_SCRIPT_GLOBAL_SHAKING(BOOL p0);
```

```
In drunk_controller.c4, sub_309
if (CAM::IS_SCRIPT_GLOBAL_SHAKING()) {
    CAM::STOP_SCRIPT_GLOBAL_SHAKING(0);
}
```

## Parameters
* **p0**: 

