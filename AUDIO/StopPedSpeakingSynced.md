---
ns: AUDIO
aliases: ["0xAB6781A5F3101470"]
---
## STOP_PED_SPEAKING_SYNCED

```c
// 0xAB6781A5F3101470
void STOP_PED_SPEAKING_SYNCED(Ped ped, cs_type(Any) BOOL shouldDisable);
```

This doesn't stop a piece of dialogue that has been triggered.

This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.

The ped will also be prevented from speaking on remote machines. Use [STOP_PED_SPEAKING](#_0x9D64D7405520E3D3) if you just want to affect the local machine.


## Parameters
* **ped**:
* **shouldDisable**:
