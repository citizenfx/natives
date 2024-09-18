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

```c
enum eAudSpecialEffectMode
{
	kSpecialEffectModeNormal = 0,
	kSpecialEffectModeUnderwater = 1,
	kSpecialEffectModeStoned = 2,
	kSpecialEffectModePauseMenu = 3,
	kSpecialEffectModeSlowMotion = 4,
	kSpecialEffectModeDrunkStage01 = 5,
	kSpecialEffectModeDrunkStage02 = 6,
	kSpecialEffectModeDrunkStage03 = 7,
	NUM_AUDSPECIALEFFECTMODE
};
```

## Parameters
* **mode**: Audio mode to apply this frame

