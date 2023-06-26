---
ns: AUDIO
---
## IS_ALARM_PLAYING

```c
// 0x226435CB96CCFC8C 0x9D8E1D23
BOOL IS_ALARM_PLAYING(char* alarmName);
```

```
 You can have all alarm names here: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
```

## Parameters
* **alarmName**: 

## Return value
Returns a boolean value indicating whether the specified alarm is playing.
 - `true`: The alarm is currently playing.
 - `false`: The alarm is not playing or the specified alarm name is invalid

## Examples
```lua
local isAlarmPlaying = IsAlarmPlaying("AGENCY_HEIST_FIB_TOWER_ALARMS")
print(isAlarmPlaying)
```

```js
 const isAlarmPlaying = IsAlarmPlaying("AGENCY_HEIST_FIB_TOWER_ALARMS");
 console.log(isAlarmPlaying);
 ```

```cs
 using static CitizenFX.Core.Native.API;
 // ...
 bool isAlarmPlaying = IsAlarmPlaying("AGENCY_HEIST_FIB_TOWER_ALARMS");

 Debug.WriteLine($"{isAlarmPlaying}");
 ```