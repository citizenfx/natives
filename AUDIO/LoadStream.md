---
ns: AUDIO
---
## LOAD_STREAM

```c
// 0x1F1F957154EC51DF 0x0D89599D
BOOL LOAD_STREAM(char* streamName, char* soundSet);
```
[All found occurences in the b2699 decompiled scripts](https://gist.github.com/ItsJunction/1d24ae9b6b8096045ddea1af1ef868c1)
Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
```
Example:  
AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
```

## Parameters
* **streamName**: 
* **soundSet**: 

## Return value
