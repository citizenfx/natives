---
ns: DATAFILE
---
## _LOAD_UGC_FILE

```c
// 0xC5238C011AF405E4 0x660C468E
BOOL _LOAD_UGC_FILE(char* filename);
```

```
Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.  
Returns whether or not the file was successfully loaded.  
Example:  
DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"  
```

## Parameters
* **filename**: 

## Return value
