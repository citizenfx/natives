---
ns: GRAPHICS
aliases: ["0x86255B1FC929E33E"]
---
## IS_SCALEFORM_MOVIE_DELETING

```c
// 0x86255B1FC929E33E
cs_type(Any) BOOL IS_SCALEFORM_MOVIE_DELETING(int scaleformIndex);
```

```
NativeDB Introduced: v1290
```

## Parameters
* **scaleformIndex**: Scaleform index returned by [`REQUEST_SCALEFORM_MOVIE`](#_0x11FE353CF9733E6F) (or similar natives).

## Return value
Returns true if a scaleform movie is being deleted from streaming memory (After it has been marked as no longer needed with [`SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED`](#_0x1D132D614DD86811).
