---
ns: NETWORK
---
## NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE

```c
// 0x742A637471BCECD9 0xB386713E
void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(Ped ped, int netScene, char* animDict, char* animnName, float blendInSpeed, float blendOutSpeed, int duration, int flag, float playbackRate, Any p9);
```


## Parameters
* **ped**: The ped that the animation gets applied to.
* **netScene**: scene id.
* **animDict**: The animDict of the animation that you want to play (remember you have to load with RequestAnimDict() before executing this native)
* **animnName**: The name of the animation that the ped is gonna play.
* **blendInSpeed**: a float (normal speed is 8.0f).
* **blendOutSpeed**: a float (normal speed is -8.0f).
* **duration**: The animation duration (But it doesn't seem to afect anything).
* **flag**: A big number 100000000 (Also doesn't seem to affect anything).
* **playbackRate**: Doesn't seem to affect anything.
* **p9**: Also a big number 100000000 (Doesn't seem to affect anything)

## Animation Dictionaries
* **Animation List**: https://alexguirre.github.io/animations-list/
* **Other Option**: More likely to find your desired animation by just searching OpenIV 
* Most can be found here: (Gta V path)\update\x64\dlcpacks\(Desired folder like mpheist)\dlc.rpf\x64\anim\ingame\clip_anim@.rpf\
* Most usefull ones start with anim@scripted@...

## Animations
* **Animation List**: https://alexguirre.github.io/animations-list/
* **Other Option**: You are much more likely to find the animation by opening [CodeWalker's](https://pl.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map) Ped Viewer and putting the AnimDict into the search bar.

## Used With
* **NetworkAddPedToSynchronisedScene**: https://docs.fivem.net/natives/?_0x742A637471BCECD9.
* **NetworkAddEntityToSynchronisedScene**: https://docs.fivem.net/natives/?_0xF2404D68CBC855FA.
* **NetworkCreateSynchronisedScene**: https://docs.fivem.net/natives/?_0x7CD6BC4C2BBDD526.
