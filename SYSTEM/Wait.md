---
ns: SYSTEM
---
## WAIT

```c
// 0x4EDE34FBADD967A6 0x7715C03B
void WAIT(int ms);
```

```
Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use   
static void WAIT(DWORD time);  
		found in main.h   
		--------------------------------------------------------------------  
		It does not actually seem to wait the amount of milliseconds stated like the normal WAIT() command does, but it does seem to make task sequences work more smoothly  
		System native hashes do not change on gameupdate  
```

## Parameters
* **ms**: 

