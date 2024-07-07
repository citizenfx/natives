---
ns: AUDIO
---
## HINT_SCRIPT_AUDIO_BANK

```c
// 0xFB380A29641EC31A 0x41FA0E51
cs_type(Any) BOOL HINT_SCRIPT_AUDIO_BANK(cs_type(Any) char* bankName, cs_type(int) BOOL bOverNetwork);
```

Hints that this bank would be good to load if there are free slots.
Does not guarentee loading of the bank, [REQUEST_SCRIPT_AUDIO_BANK](#_0xFE02FFBED8CA9D99) MUST be used as normal before triggering sounds"

This native has a new argument on newer game builds:
* **playerBits**: likely used to specifiy players to sync to as a bit mask (1 << (0-128))

## Parameters
* **bankName**:
* **bOverNetwork**:

## Return value
