---
ns: AUDIO
aliases: ["0x12561FCBB62D5B9C"]
---
## SET_AUDIO_SPECIAL_EFFECT_MODE

```c
// 0x12561FCBB62D5B9C 0x62B43677
void SET_AUDIO_SPECIAL_EFFECT_MODE(int mode);
```

Needs to be called every frame.

Modes:
1: Applies some effect to collisions (for instance when crashing into stuff with a car or punching something), sounds kind of like underwater. Also mutes vehicle radio.
2: Adds an echo to every sound effect, used by game scripts when you are drunk. Also mutes vehicle radio.

## Parameters
* **mode**: Audio mode to apply this frame

