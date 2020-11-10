---
ns: GRAPHICS
aliases: ["0x8A35C742130C6080","_ADD_DECAL_TO_MARKER","_OVERRIDE_DECAL_TEXTURE"]
---
## PATCH_DECAL_DIFFUSE_MAP

```c
// 0x8A35C742130C6080 0x335695CF
void PATCH_DECAL_DIFFUSE_MAP(int decalType, char* textureDict, char* textureName);
```

```
REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
```

## Parameters
* **decalType**: 
* **textureDict**: 
* **textureName**: 

