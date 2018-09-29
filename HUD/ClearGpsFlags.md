---
ns: HUD
---
## CLEAR_GPS_FLAGS

```c
// 0x21986729D6A3A830 0x056AFCE6
void CLEAR_GPS_FLAGS();
```

```
Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
Doesn't seem like the flags are actually read by the game at all.  
```

