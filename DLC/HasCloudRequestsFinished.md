---
ns: DLC
---
## _NULLIFY

```c
// 0x46E2B844905BC5F0 0x6087C10C
BOOL _NULLIFY(Any* variable, Any unused);
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
* **variable**: 
* **unused**: 

## Return value
