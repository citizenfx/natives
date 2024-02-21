---
ns: AUDIO
aliases: ["0xD57AAAE0E2214D11"]
---
## FREEZE_MICROPHONE

```c
// 0xD57AAAE0E2214D11 0x2B9D91E8
void FREEZE_MICROPHONE();
```

Allows script to freeze the microphone for a single frame, mantaining its current transform/settings.
This native should be called every frame you want to keep the microphone frozen, when you stop calling it it will automatically unfreeze

