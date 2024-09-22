---
ns: AUDIO
---
## SET_ANIMAL_MOOD

```c
// 0xCC97B29285B1DC3B 0x3EA7C6CB
void SET_ANIMAL_MOOD(Ped animal, int mood);
```

```c
enum eAudAnimalMood {
	AUD_ANIMAL_MOOD_ANGRY = 0,
	AUD_ANIMAL_MOOD_PLAYFUL = 1,

	AUD_ANIMAL_MOOD_NUM_MOODS = 2
}
```


## Parameters
* **animal**:
* **mood**: Refer to `eAudAnimalMood`

