---
ns: VEHICLE
---
## SET_RANDOM_TRAINS

```c
// 0x80D9F74197EA47D9 0xD461CA7F
void SET_RANDOM_TRAINS(BOOL toggle);
```

Enables spawning random trains on the preset tracks. 

Requires [`SWITCH_TRAIN_TRACK`](#_0xFD813BB7DB977F20) and [`SET_TRAIN_TRACK_SPAWN_FREQUENCY`](#_0x21973BBF8D17EDFA) to be set.

## Parameters
* **toggle**: Whether to enable random trains.

## Examples
```lua
SwitchTrainTrack(0, true) -- Setting the Main train track(s) around LS and towards Sandy Shores active
SwitchTrainTrack(3, true) -- Setting the Metro tracks active
SetTrainTrackSpawnFrequency(0, 120000) -- The Train spawn frequency set for the game engine
SetTrainTrackSpawnFrequency(3, 120000) -- The Metro spawn frequency set for the game engine
SetRandomTrains(true) -- Telling the game we want to use randomly spawned trains
```
