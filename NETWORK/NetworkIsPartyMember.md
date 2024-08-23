---
ns: NETWORK
---
## NETWORK_IS_PARTY_MEMBER

```c
// 0x676ED266AADD31E0 0x1D0C929D
BOOL NETWORK_IS_PARTY_MEMBER(int* networkHandle);
```

```
Note according to IDA TU27 X360(Console),  
This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
Side note: This location just stops where it's at once jumped to.  
Screenshot for side note,   
https://docs.fivem.net/natives/0x966C2BC2A7FE3F30_1.png
https://docs.fivem.net/natives/0x966C2BC2A7FE3F30_2.png
```

## Parameters
* **networkHandle**: 

## Return value
