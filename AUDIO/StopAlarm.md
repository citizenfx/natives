---
ns: AUDIO
---
## STOP_ALARM

```c
// 0xA1CADDCD98415A41 0xF987BE8C
void STOP_ALARM(char* alarmName, BOOL toggle);
```

```
Example:  
This will stop the alarm at Fort Zancudo.  
AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
First parameter (char) is the name of the alarm.  
Second parameter (bool) has to be true (1) to have any effect.  
```

## Parameters
* **alarmName**: 
* **toggle**: 

