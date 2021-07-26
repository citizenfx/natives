---
ns: DATAFILE
aliases: ["_LOAD_UGC_FILE"]
---
## DATAFILE_LOAD_OFFLINE_UGC

```c
// 0xC5238C011AF405E4 0x660C468E
BOOL DATAFILE_LOAD_OFFLINE_UGC(char* filename);
```

```
Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
Returns whether or not the file was successfully loaded.
Example:
DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
```

```
NativeDB Added Parameter 2: Any p1
```

## Parameters
* **filename**: 

## Return value
