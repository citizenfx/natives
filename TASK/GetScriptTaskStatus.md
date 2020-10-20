---
ns: TASK
---
## GET_SCRIPT_TASK_STATUS

```c
// 0x77F1BEB8863288D5 0xB2477B23
int GET_SCRIPT_TASK_STATUS(Ped targetPed, Hash taskHash);
```

```
Gets the status of a script-assigned task. The hash does not seem to match the actual native name, but is assigned hardcoded from the executable during task creation.  
Statuses are specific to tasks, in addition '7' means the specified task is not assigned to the ped.  
A few hashes found in the executable (although not a complete list) can be found at pastebin.com/R9iK6M9W as it was too long for this wiki.  
```

## Parameters
* **targetPed**: 
* **taskHash**: 

## Return value
