---
ns: AUDIO
---
## REQUEST_SCRIPT_AUDIO_BANK

```c
// 0x2F844A8B08D76685 0x21322887
BOOL REQUEST_SCRIPT_AUDIO_BANK(char* bankName, BOOL bOverNetwork);
```

This native has a new argument on newer game builds:
* **playerBits**:

## Parameters
* **bankName**:
* **bOverNetwork**:

## Return value
Requests and returns true/false if the script audio bank has laoded
