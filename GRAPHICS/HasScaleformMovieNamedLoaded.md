---
ns: GRAPHICS
---
## _HAS_SCALEFORM_MOVIE_NAMED_LOADED

```c
// 0x9743BCCF7CD6E1F6
BOOL _HAS_SCALEFORM_MOVIE_NAMED_LOADED(int* scaleformHandle, char* scaleformName);
```

Check if a Scaleform movie with the given name has been loaded.

```
NativeDB Introduced: v3407
```

## Parameters
* **scaleformHandle**: Scaleform movie handle
* **scaleformName**: Name of the Scaleform movie to check


## Return value
Returns `true` if the named Scaleform movie is loaded, `false` otherwise.
