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
https://i.imgur.com/1CIH2VT.png
https://i.imgur.com/6QTCRj2.png
```

## Parameters
* **networkHandle**: 

## Return value
