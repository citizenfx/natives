---
ns: DLC
aliases: ["_NULLIFY"]
---
## HAS_CLOUD_REQUESTS_FINISHED

```c
// 0x46E2B844905BC5F0 0x6087C10C
BOOL HAS_CLOUD_REQUESTS_FINISHED(BOOL* p0, Any unused);
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

## Parameters
* **p0**:
* **unused**:

## Return value
