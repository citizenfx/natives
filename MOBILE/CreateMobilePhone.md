---
ns: MOBILE
---
## CREATE_MOBILE_PHONE

```c
// 0xA4E8E696C532FBC7 0x5BBC5E23
void CREATE_MOBILE_PHONE(int phoneType);
```

```
Creates a mobile phone of the specified type.  
Possible phone types:  
0 - Default phone / Michael's phone  
1 - Trevor's phone  
2 - Franklin's phone  
4 - Prologue phone  
These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
```

## Parameters
* **phoneType**: 

