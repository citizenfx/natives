---
ns: MISC
aliases: ["0x2272B0A1343129F4"]
---
## IS_STUNT_JUMP_MESSAGE_SHOWING

```c
// 0x2272B0A1343129F4 0x021636EE
BOOL IS_STUNT_JUMP_MESSAGE_SHOWING();
```


## Return value
Returns true if the stunt jump message is currently being displayed. This will normally start to return true the same frame that [IS_STUNT_JUMP_IN_PROGRESS](#_0x7A3F19700A4D0525) stops returning true (unless the stunt jump was aborted).