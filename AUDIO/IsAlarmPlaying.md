---
ns: AUDIO
---
## IS_ALARM_PLAYING

```c
// 0x226435CB96CCFC8C 0x9D8E1D23
BOOL IS_ALARM_PLAYING(char* alarmName);
```

## Parameters
* **alarmName**:

## Return value
Returns true if an alarm is currently playing with the specified name

## Examples
```lua
local bAlarmPlaying = IsAlarmPlaying("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS")
```
