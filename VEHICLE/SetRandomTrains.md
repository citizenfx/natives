---
ns: VEHICLE
---
## SET_RANDOM_TRAINS

```c
// 0x80D9F74197EA47D9 0xD461CA7F
void SET_RANDOM_TRAINS(BOOL toggle);
```

**Information**
Enables spawning random trains on the preset tracks. However to be able to use this call you would first need to call at least two other calls to make it function properly.

You would need to tell the game which tracks you want to be enabled (or disabled), and you would need to set the (random) spawn frequency. If you don't call at least those to functions this function won't do anything at all!

**Required other functions:**
SwitchTrainTrack(TrackId: Number, Active: Boolean): [SWITCH_TRAIN_TRACK](#_0xFD813BB7DB977F20)
SetTrainTrackSpawnFrequency(TrackId: Number, Intervalms: number): [SET_TRAIN_TRACK_SPAWN_FREQUENCY](#_0x21973BBF8D17EDFA)

**Example (Lua)**
The example snippet bellow will activate the 'large train tracks' around LS and into Sandy Shores etc, and the Metro in Los Santos.
This 'piece of code' **only needs to be called once** (client sided!) and **not** looped.

```
SwitchTrainTrack(0, true) -- Setting the Main train track(s) around LS and towards Sandy Shores active
SwitchTrainTrack(3, true) -- Setting the Metro tracks active
SetTrainTrackSpawnFrequency(0, 120000) -- The Train spawn frequency set for the game engine
SetTrainTrackSpawnFrequency(3, 120000) -- The Metro spawn frequency set for the game engine
SetRandomTrains(true) -- Telling the game we want to use randomly spawned trains
```

Extra note/info: The drivers (NPC's) etc of the trains and metro will also be spawned automatically. And thus using this snippet eliminates the need for manually spawning and controlling "random train traffic" for people whom just want 'random train traffic' on their server.


**Traffic Density modifier**
```
Currently I don't know if functions like SetVehicleDensityMultiplierThisFrame would or would not effect this call, maybe someone in the future can update this information when more information about this is absolutely certain and confirmed?
```



## Parameters
* **toggle**: 

