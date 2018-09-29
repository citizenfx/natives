---
ns: INTERIOR
aliases: ["0x05B7A89BD78797FC"]
---
## GET_INTERIOR_AT_COORDS_WITH_TYPE

```c
// 0x05B7A89BD78797FC 0x96525B06
int GET_INTERIOR_AT_COORDS_WITH_TYPE(float x, float y, float z, char* interiorType);
```

```
Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **interiorType**: 

## Return value
