---
ns: DLC
aliases: ["_NULLIFY"]
---
## HAS_CLOUD_REQUESTS_FINISHED

```c
// 0x46E2B844905BC5F0 0x6087C10C
BOOL HAS_CLOUD_REQUESTS_FINISHED(Any* variable, Any unused);
```

```
Sets the value of the specified variable to 0.  
Always returns true.  
bool _NULLIFY(void* variable, int unused)  
{  
    *variable = NULL;  
    return true;  
}  
```

```
NativeDB Parameter 0: BOOL* variable
```

## Parameters
* **variable**: 
* **unused**: 

## Return value
