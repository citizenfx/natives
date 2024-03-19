---
ns: AUDIO
---
## STOP_ALARM

```c
// 0xA1CADDCD98415A41 0xF987BE8C
void STOP_ALARM(char* alarmName, BOOL instantStop);
```


## Parameters
* **alarmName**:
* **instantStop**: Whether to kill the alarm instantly, or to let the audio system turn it off when it becomes inaudible
