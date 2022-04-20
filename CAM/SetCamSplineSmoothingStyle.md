---
ns: CAM
aliases: ["0xD1B0F412F109EA5D"]
---
## SET_CAM_SPLINE_SMOOTHING_STYLE

```c
// 0xD1B0F412F109EA5D 0x15E141CE
void SET_CAM_SPLINE_SMOOTHING_STYLE(Cam cam, int smoothingStyle);
```

Sets the smoothing style for a DEFAULT_SPLINE_CAMERA
Ranges from 0 to 3
```
0: No lead-in or lead-out smoothing
1: Smooth lead-in
2: Smooth lead-out
3: Both lead-in and lead-out are smoothed
```

Using 1-3 will result in misalignment from the passed durations for the spline nodes, the overall duration will remain but other nodes will be shortened if smoothing anything.

Graph below demonstrates interpolation between 0-1000 and back 10 times.

![](https://i.imgur.com/cixWh7m.png)

## Parameters
* **cam**: The DEFAULT_SPLINE_CAMERA to apply the smoothing to
* **smoothingStyle**: 0 to 3, 0 no lead-in smoothing, 1 smooth lead-in, 2 smooth lead-out, 3 smooth lead-in & lead-out
