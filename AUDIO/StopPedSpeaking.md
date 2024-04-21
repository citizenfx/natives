---
ns: AUDIO
---
## STOP_PED_SPEAKING

```c
// 0x9D64D7405520E3D3 0xFF92B49D
void STOP_PED_SPEAKING(Ped ped, BOOL shouldDisable);
```

This doesn't stop a piece of dialogue that has been triggered.

This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.

Nb. This does not sync over the network, it will only affect peds locally. Use [STOP_PED_SPEAKING_SYNCED](#_0xAB6781A5F3101470) if you need to affect peds on other machines too.


## Parameters
* **ped**:
* **shouldDisable**:

