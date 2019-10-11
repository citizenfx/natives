---
ns: SHAPETEST
aliases: ["0x65287525D951F6BE","_GET_SHAPE_TEST_RESULT_EX"]
---
## GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL

```c
// 0x65287525D951F6BE 0x4301E10C
int GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL(int rayHandle, BOOL* hit, Vector3* endCoords, Vector3* surfaceNormal, Hash* materialHash, Entity* entityHit);
```

```
behaves exactly the same way as GET_SHAPE_TEST_RESULT except it has one extra parameter (_materialHash).  
Quick disassembly seems to indicate that the unknown is a hash. EDIT: Seems to be the hash of the hit material or surface type.  
found a materialFX.dat list of them but not sure if it has to do with this native yet.  
materials (full list): pastebin.com/gyHjsYBK  
```

## Parameters
* **rayHandle**: 
* **hit**: 
* **endCoords**: 
* **surfaceNormal**: 
* **materialHash**: 
* **entityHit**: 

## Return value
