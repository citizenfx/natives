---
ns: AUDIO
---
## STOP_ALARM

```c
// 0xA1CADDCD98415A41 0xF987BE8C
void STOP_ALARM(char* alarmName, BOOL toggle);
```

```
 You can have all alarm names here: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
```

## Examples
```lua
StopAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", true) -- going to stop alarm at Fort Zancudo
```
 
```js
StopAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", true); // going to stop alarm at Fort Zancudo
```

```cs
using static CitizenFX.Core.API;
// ...
StopAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", true); // going to stop alarm at Fort Zancudo
```

## Parameters
* **alarmName**: The name of the alarm to stop.
* **toggle**: A boolean value indicating whether to toggle the alarm off.

