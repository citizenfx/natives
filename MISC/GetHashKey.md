---
ns: MISC
---
## GET_HASH_KEY

```c
// 0xD24D37CC275948CC 0x98EFF6F1
Hash GET_HASH_KEY(char* string);
```

```
This native converts its past string to hash. It is hashed using jenkins one at a time method.  
----------  
The string is first converted to lowercase before feeding it to joaat.  
As a result, it makes this native case-insensitive.  
For example: "zentorno", "ZENTORNO" and "Zentorno" produce the same hash.  
```

## Parameters
* **string**: 

## Return value
