---
ns: AUDIO
aliases: ["0x30CA2EF91D15ADF8"]
---
## IS_ANY_POSITIONAL_SPEECH_PLAYING

```c
// 0x30CA2EF91D15ADF8
cs_type(Any) BOOL IS_ANY_POSITIONAL_SPEECH_PLAYING();
```

Determines if any ped-independent, positionally-based scripted speech is currently active. This typically includes speech events triggered using [`PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE`](#_0xED640017ED337E45).

```
NativeDB Introduced: v2189
```

## Return value
Returns `true` if any ped-independent positional scripted speech (i.e. triggered using [PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE](#_0xED640017ED337E45)) is currently playing, `false` otherwise.
