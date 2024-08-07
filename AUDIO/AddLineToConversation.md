---
ns: AUDIO
---
## ADD_LINE_TO_CONVERSATION

```c
// 0xC5EF963405593646 0x96CD0513
void ADD_LINE_TO_CONVERSATION(int speakerConversationIndex, char* context, char* subtitle, int listenerNumber, int volumeType, BOOL isRandom, BOOL interruptible, BOOL ducksRadio, BOOL ducksScore, int audibility, BOOL headset, BOOL dontInterruptForSpecialAbility, BOOL isPadSpeakerRoute);
```

```cpp
enum eAudibility {
	AUD_AUDIBILITY_NORMAL = 0,
	AUD_AUDIBILITY_CLEAR = 1,
	AUD_AUDIBILITY_CRITICAL = 2,
	AUD_AUDIBILITY_LEAD_IN = 3
}
```

## Parameters
* **speakerConversationIndex**:
* **context**:
* **subtitle**:
* **listenerNumber**:
* **volumeType**:
* **isRandom**:
* **interruptible**:
* **ducksRadio**:
* **ducksScore**:
* **audibility**: See eAudibility
* **headset**:
* **dontInterruptForSpecialAbility**:
* **isPadSpeakerRoute**:


