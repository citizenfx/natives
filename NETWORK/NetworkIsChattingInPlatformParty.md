---
ns: NETWORK
---
## NETWORK_IS_CHATTING_IN_PLATFORM_PARTY

```c
// 0x8DE9945BCC9AEC52 0x51367B34
BOOL NETWORK_IS_CHATTING_IN_PLATFORM_PARTY(int* networkHandle);
```

```
This would be nice to see if someone is in party chat, but 2 sad notes.  
1) It only becomes true if said person is speaking in that party at the time.  
2) It will never, become true unless you are in that party with said person.  
```

## Parameters
* **networkHandle**: 

## Return value
