---
ns: TASK
---
## CLEAR_SEQUENCE_TASK

```c
// 0x3841422E9C488D8C 0x47ED03CE
cs_type(Any) void CLEAR_SEQUENCE_TASK(int* taskSequenceId);
```

For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#_0xE8854A4326B9E12B)

#### NOTE
If you fail to call [`CLOSE_SEQUENCE_TASK`](#_0x39E72BC99E6360CB) and `CLEAR_SEQUENCE_TASK` the sequence system can get stuck in a broken state until you restart your client.

## Parameters
* **taskSequenceId**: The task sequence to clear
