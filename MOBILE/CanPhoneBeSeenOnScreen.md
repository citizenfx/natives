---
ns: MOBILE
---
## CAN_PHONE_BE_SEEN_ON_SCREEN

```c
// 0xC4E2813898C97A4B 0x5F978584
BOOL CAN_PHONE_BE_SEEN_ON_SCREEN();
```

```
This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
I can confirm the above. This function is hard-coded to always return 1.  
```

## Return value
