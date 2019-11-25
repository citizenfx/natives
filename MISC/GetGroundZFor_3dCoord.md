---
ns: MISC
---
## GET_GROUND_Z_FOR_3D_COORD

```c
// 0xC906A7DAB05C8D2B 0xA1BFD5E0
BOOL GET_GROUND_Z_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL unk);
```

```
Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!  
x: Position on the X-axis to get ground elevation at.  
y: Position on the Y-axis to get ground elevation at.  
z: Position on the Z-axis to get ground elevation at.  
groundZ: The ground elevation at the specified position.  
unk: Nearly always 0, very rarely 1 in the scripts.  
```

```
NativeDB Added Parameter 6: BOOL p5
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **groundZ**: 
* **unk**: 

## Return value
