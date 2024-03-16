---
ns: MISC
---
## SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT

```c
// 0xB98236CAAECEF897 0xD06F1720
void SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(BOOL toggle);
```

Normally blips can only be removed by the script/resource that created them. This function allows a script to remove blips from any script, bypassing this logic.

## Parameters
* **toggle**: Bool indicating if the script that called this function can remove blips created by other scripts.

