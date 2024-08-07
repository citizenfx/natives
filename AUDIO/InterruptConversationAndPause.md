---
ns: AUDIO
aliases: ["0x8A694D7A68F8DC38"]
---
## INTERRUPT_CONVERSATION_AND_PAUSE

```c
// 0x8A694D7A68F8DC38 0xDD4A3F1F
void INTERRUPT_CONVERSATION_AND_PAUSE(Ped interrupterPed, char* context, char* voiceName);
```

Handles conversation interrupts and pauses, using the code-side system for improved timing and to minimize unfriendly logic interactions.

## Parameters
* **interrupterPed**: the ped speaking
* **context**: the line to use
* **voiceName**: the voicename for the audio asset

