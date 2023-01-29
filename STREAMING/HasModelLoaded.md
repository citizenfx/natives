---
ns: STREAMING
---
## HAS_MODEL_LOADED

```c
// 0x98A4EB5D89A0C952 0x62BFDB37
BOOL HAS_MODEL_LOADED(Hash model);
```

Returns whether the specified model (archetype) is currently loaded.

Note that this will return 'true' even if the model has been requested and loaded by something other than the current script, if you're intending to actually use the model in a later frame, you should call REQUEST\_MODEL anyway.

## Parameters
* **model**: The model hash to check for.

## Return value
A boolean indicating whether the archetype is loaded (true) or not (false).