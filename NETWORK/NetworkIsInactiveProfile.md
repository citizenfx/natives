---
ns: NETWORK
---
## NETWORK_IS_INACTIVE_PROFILE

```c
// 0x7E58745504313A2E 0x95481343
BOOL NETWORK_IS_INACTIVE_PROFILE(int* networkHandle);
```

Checks if the networkHandle is the same as any other user that is signed in on the local machine.
For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".

## Parameters
* **networkHandle**: 

## Return value
Returns true if the networkHandle is signed in on the same machine, but is not the main player.
