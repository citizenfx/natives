---
ns: MISC
---
## SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT

```c
// 0xB98236CAAECEF897 0xD06F1720
void SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(BOOL toggle);
```

Normally, blips can only be removed by the script or resource that created them. However, this native function allows a script to bypass this logic and remove blips from any script.

## Parameters
* **toggle**: Bool indicating if the script that called this native can remove blips created by other scripts.

