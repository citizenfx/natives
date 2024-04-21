---
ns: AUDIO
---
## INTERRUPT_CONVERSATION

```c
// 0xA018A12E5C5C2FA6 0xF3A67AF3
void INTERRUPT_CONVERSATION(Ped interrupterPed, cs_type(AnyPtr) char* context, cs_type(AnyPtr) char* voiceName);
```

Handles conversation interrupts, using the code-side system for improved timing and to minimize unfriendly logic interactions.

## Parameters
* **interrupterPed**: the ped speaking
* **context**: the line to use
* **voiceName**: the voicename for the audio asset

