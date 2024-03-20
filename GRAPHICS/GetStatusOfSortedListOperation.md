---
ns: GRAPHICS
aliases: ["0xF5BED327CEA362B1"]
---
## GET_STATUS_OF_SORTED_LIST_OPERATION

```c
// 0xF5BED327CEA362B1 0x596B900D
int GET_STATUS_OF_SORTED_LIST_OPERATION(BOOL scanForSaving);
```

Returns status of gallery photo fetch, which was requested by [`QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS`](#_0x2A893980E96B659A).

## Parameters
* **scanForSaving**: 

## Return value
0 - Succeeded, 1 - In progress, 2 - Failed
