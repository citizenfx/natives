---
ns: SOCIALCLUB
aliases: ["0x82E4A58BABC15AE7","_SC_GET_CHECK_STRING_STATUS"]
---
## SC_PROFANITY_GET_CHECK_IS_PENDING

```c
// 0x82E4A58BABC15AE7 0xA796D7A7
int SC_PROFANITY_GET_CHECK_IS_PENDING(int token);
```

```
Returns the status of a _SC_START_CHECK_STRING_TASK task.  
Possible return values:  
0: not a profane string  
1: a profane string  
3: server error occurred  
```

```
NativeDB Return Type: BOOL
```

## Parameters
* **token**: 

## Return value
