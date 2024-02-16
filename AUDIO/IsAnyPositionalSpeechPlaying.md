---
ns: AUDIO
aliases: ["0x30CA2EF91D15ADF8"]
---
## IS_ANY_POSITIONAL_SPEECH_PLAYING

```c
// 0x30CA2EF91D15ADF8
cs_type(Any) BOOL IS_ANY_POSITIONAL_SPEECH_PLAYING();
```

## Return value
Returns true if any ped-independent positional scripted speech (ie. triggered using [PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE](#_0xED640017ED337E45)) is currently playing
