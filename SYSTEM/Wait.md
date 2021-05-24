---
ns: SYSTEM
---
## WAIT

```c
// 0x4EDE34FBADD967A6 0x7715C03B
void WAIT(int ms);
```

```
Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
```

## Parameters
* **ms**: 

