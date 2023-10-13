---
ns: CAM
---
## RENDER_SCRIPT_CAMS

```c
// 0x07E5B515DB0636FC 0x74337969
void RENDER_SCRIPT_CAMS(BOOL setActive, BOOL doInterp, int interpDuration, BOOL shouldLockInterpSourceFrame, BOOL shouldApplyAcrossAllThreads, Any renderingOptions);
```

```
doInterp - smooth transition between the camera's positions  
interpDuration - Time in milliseconds for the transition to happen  (default is 3000)
If you have created a script (rendering) camera, and want to go back to the   
character (gameplay) camera, call this native with render set to 0.  
Setting ease to 1 will smooth the transition.  
```

```
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **setActive**: 
* **doInterp**: 
* **interpDuration**: 
* **shouldLockInterpSourceFrame**: 
* **shouldApplyAcrossAllThreads**: 
* **renderingOptions**:

