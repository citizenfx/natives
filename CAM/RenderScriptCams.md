---
ns: CAM
---
## RENDER_SCRIPT_CAMS

```c
// 0x07E5B515DB0636FC 0x74337969
void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL p3, BOOL p4);
```

```
ease - smooth transition between the camera's positions  
easeTime - Time in milliseconds for the transition to happen  
If you have created a script (rendering) camera, and want to go back to the   
character (gameplay) camera, call this native with render set to 0.  
Setting ease to 1 will smooth the transition.  
```

```
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **render**: 
* **ease**: 
* **easeTime**: 
* **p3**: 
* **p4**: 

