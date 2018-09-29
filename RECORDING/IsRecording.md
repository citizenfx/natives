---
ns: RECORDING
---
## _IS_RECORDING

```c
// 0x1897CA71995A90B4
BOOL _IS_RECORDING();
```

```
Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)  
mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944  
retn  
```

## Return value
