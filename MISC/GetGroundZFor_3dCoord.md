---
ns: MISC
---
## GET_GROUND_Z_FOR_3D_COORD

```c
// 0xC906A7DAB05C8D2B 0xA1BFD5E0
BOOL GET_GROUND_Z_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL ignoreWater);
```

```
Bear in mind this native can only calculate the elevation when the coordinates are within the client's render distance.
```

```
NativeDB Added Parameter 6: BOOL p5
```

## Parameters
* **x**: Position on the X-axis to get ground elevation at.
* **y**: Position on the Y-axis to get ground elevation at.
* **z**: Position on the Z-axis to get ground elevation at.
* **groundZ**: The ground elevation at the specified position.
* **ignoreWater**: 

## Return value
