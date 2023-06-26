---
ns: AUDIO
---
## START_ALARM

```c
// 0x0355EF116C4C97B2 0x703F524B
void START_ALARM(char* alarmName, BOOL p2);
```

```
 You can have all alarm names here: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
```

## Examples
```lua
StartAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS") -- going to start alarm at Fort Zancudo
```

```js
StartAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS"); // going to start alarm at Fort Zancudo
```

```cs
using static CitizenFX.Core.Native.API;
// ...
StartAlarm("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS"); // going to start alarm at Fort Zancudo
```

## Parameters
* **alarmName**: The name of the alarm to start.
* **p2**: An unknown parameter with an unclear effect. Setting it to either 0 or 1 does not seem to make a difference at present.
