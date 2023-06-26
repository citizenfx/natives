---
ns: AUDIO
---
## TRIGGER_MUSIC_EVENT

```c
// 0x706D57B0F50DA710 0xB6094948
BOOL TRIGGER_MUSIC_EVENT(char* eventName);
```

```
 You can have all music event names here: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/musicEventNames.json
```

You have to use [`PREPARE_MUSIC_EVENT`](#0x1E5185B72EF5158A) before using this native.

## Parameters
* **eventName**: The name of the music event to trigger.

## Examples

```lua
local music = "PROLOGUE_TEST_POLICE_CAR_CHASE"
if PrepareMusicEvent(music) then
    TriggerMusicEvent(music)
end
```

```js
const music = "PROLOGUE_TEST_POLICE_CAR_CHASE";
if (PrepareMusicEvent(music)) {
    TriggerMusicEvent(music);
}
```

```cs
using static CitizenFX.Core.Native.API;
// ...
string music = "PROLOGUE_TEST_POLICE_CAR_CHASE";
if (PrepareMusicEvent(music)) {
    TriggerMusicEvent(music);
}
```