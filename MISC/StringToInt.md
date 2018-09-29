---
ns: MISC
---
## STRING_TO_INT

```c
// 0x5A5F40FE637EB584 0x590A8160
BOOL STRING_TO_INT(char* string, int* outInteger);
```

```
Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
```

## Parameters
* **string**: 
* **outInteger**: 

## Return value
