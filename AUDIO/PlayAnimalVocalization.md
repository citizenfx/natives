---
ns: AUDIO
aliases: ["0xEE066C7006C49C0A"]
---
## PLAY_ANIMAL_VOCALIZATION

```c
// 0xEE066C7006C49C0A 0x498849F3
void PLAY_ANIMAL_VOCALIZATION(Ped pedHandle, int p1, char* speechName);
```

```
Plays sounds from a ped with chop model. For example it used to play bark or sniff sounds. p1 is always 3 or 4294967295 in decompiled scripts. By a quick disassembling I can assume that this arg is unused.
This native is works only when you call it on the ped with right model (ac_chop only ?)
Speech Name can be: CHOP_SNIFF_SEQ CHOP_WHINE CHOP_LICKS_MOUTH CHOP_PANT bark GROWL SNARL BARK_SEQ
```

## Parameters
* **pedHandle**: 
* **p1**: 
* **speechName**: 

