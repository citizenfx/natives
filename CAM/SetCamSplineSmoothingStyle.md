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
Ranges from 0 to 3 in rockstar scripts although there are actually 26
```
0: No lead-in or lead-out smoothing
1: Smooth lead-in
2: Smooth lead-out
3: Both lead-in and lead-out are smoothed
4-6: Longer speed up, lead-in, lead-out, and both in order as above. 
6: see above, but missed a node in testing(?)
7: Smoothed lead-in, longer smoothed lead-out
8: Longer lead-in and lead-out than 6, didn't drop node
9: Constant acceleration
10: Constant deceleration. Dropped 2 nodes in testing.
11: Same as 0
12: 10 but slower lead-in, reaches end node less early
13: Extremely close to 3, slightly longer lead-in/lead-out
14: Constant acceleration, dropped last 2 nodes in testing and halted (?)
15: Very similar to 10, did not drop any nodes.
16: Long lead-in, dropped 2 nodes in testing, very long leadout.
17: Constant acceleration, slower speed-up than 9
18: Same as 17 is to 9, slightly longer lead-out, lingers at end node
19: Very long lead in and out
20: Very long, gradual lead-in acceleration at start, gets extremely fast
21: Same as 20 but for constant deceleration
22: 20 and 21 combined, long linger at end node. Dropped 2 nodes in testing
23: Constant acceleration, doesn't complete path before it stops
24: Same as 23 but with constant deceleration, but completes path
25: 23 and 24 combined, insanely fast at middle.
26: No noticable lead-in, misses last 2 nodes in testing
27+: Alternates between 0 and 26
```

The above is documented and graphed at [Spline Cam Interp Graphs](https://docs.google.com/spreadsheets/d/1ejyiMcEYrhhQOL0mLe8664UN-vU4Oh-SBqQnVcKlFIk/edit?usp=sharing)

```

Using 1-3 will result in misalignment from the passed durations for the spline nodes, the overall duration will remain but other nodes will be shortened if smoothing anything.

Graph below demonstrates interpolation between 0-1000 and back 10 times.

![](https://i.imgur.com/cixWh7m.png)

## Parameters
* **cam**: The DEFAULT_SPLINE_CAMERA to apply the smoothing to
* **smoothingStyle**: 0 to 3, 0 no additional smoothing, 1 smooth lead-in, 2 smooth lead-out, 3 smooth lead-in & lead-out
