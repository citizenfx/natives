---
ns: CAM
---
## ADD_CAM_SPLINE_NODE

```c
// 0x8609C75EC438FB3B 0xAD3C7EAA
void ADD_CAM_SPLINE_NODE(Cam camera, float x, float y, float z, float xRot, float yRot, float zRot, int length, int p8, int transitionType);
```

```
I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  
p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  
p8 big values ~100 will slow down the camera movement before reaching this node  
p9 != 0 seems to override the rotation/pitch (bool?)  
```

## Parameters
* **camera**: 
* **x**: 
* **y**: 
* **z**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **length**: 
* **p8**: 
* **transitionType**: 

