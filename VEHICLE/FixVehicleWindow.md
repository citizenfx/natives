---
ns: VEHICLE
---
## FIX_VEHICLE_WINDOW

```c
// 0x772282EBEB95E682 0x6B8E990D
Any FIX_VEHICLE_WINDOW(Vehicle vehicle, int index);
```

int index = 0 to 13

0 = front right window
1 = front left window
2 = rear right window
3 = rear left window
4 = unsure
5 = unsure
6 = windowscreen
7 = unsure
8 = rear windowscreen
9 = unsure
10 = unsure
11 = unsure
12 = unsure
13 = unsure


Additional information: `FIX_VEHICLE_WINDOW` (0x140D0BB88) references an array of bone vehicle indices (0x141D4B3E0) `{ 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 28h, 29h }` that correspond to: `window_lf`, `window_rf`, `window_lr`, `window_rr`, `window_lm`, `window_rm`, `windscreen`, `windscreen_r`. This array is used by most vehwindow natives.

Also, this function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.

## Parameters
* **vehicle**: 
* **index**: 

## Return value
