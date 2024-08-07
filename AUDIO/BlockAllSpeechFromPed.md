---
ns: AUDIO
aliases: ["0xF8AD2EED7C47E8FE"]
---
## BLOCK_ALL_SPEECH_FROM_PED

```c
// 0xF8AD2EED7C47E8FE
void BLOCK_ALL_SPEECH_FROM_PED(Ped ped, BOOL shouldBlock, BOOL suppressOutgoingNetworkSpeech);
```

Blocks *all* speech playing on the given ped, including speech triggered by natives such as [PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE](#_0x3523634255FC3318)

The flag itself is not synced, it must be called on each machine that wishes to suppress the speech.

The `SuppressOutgoingNetworkSpeech` flag can be set to `false` if you want speech triggered locally through `PLAY_PED_AMBIENT_SPEECH_*` related native calls to still be audible on remote machines, even though it was blocked on the local one.

## Parameters
* **ped**:
* **shouldBlock**:
* **suppressOutgoingNetworkSpeech**: Defaults to `true`.
