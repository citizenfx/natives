---
ns: VEHICLE
aliases: ["0x392183BB9EA57697"]
---
## _SET_TYRE_SOFTNESS_MULTIPLIER

```c
// 0x392183BB9EA57697
void _SET_TYRE_SOFTNESS_MULTIPLIER(Vehicle vehicle, int wheelIndex, float multiplier);
```

```
Controls how fast the tires wear out.
Default values from Rockstar's Open Wheel Race JSON's:
"owrtss" (Soft): 2.2
"owrtsm" (Medium): 1.7
"owrtsh" (Hard): 1.2
Usable wheels:
0: wheel_lf
1: wheel_rf
2: wheel_lm1
3: wheel_rm1
4: wheel_lr
5: wheel_rr
```

```
NativeDB Introduced: v2060
```

## Parameters
* **vehicle**:
* **wheelIndex**:
* **multiplier**:
