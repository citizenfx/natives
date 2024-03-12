---
ns: AUDIO
---
## PRELOAD_SCRIPT_CONVERSATION

```c
// 0x3B3CAD6166916D87 0xDDF5C579
void PRELOAD_SCRIPT_CONVERSATION(BOOL displaySubtitles, BOOL addToBriefScreen, BOOL cloneConversation, BOOL interruptible);
```

Similar to [START_SCRIPT_CONVERSATION](#_0x6B17C62C9635D2DC), except that is starts the conversation off paused.

A scripter can then kick off the conversation by calling [START_PRELOADED_CONVERSATION](#_0x23641AFE870AF385).

If they want to check that the conversation is done preloading, they can use [GET_IS_PRELOADED_CONVERSATION_READY](#_0xE73364DB90778FFA)


## Parameters
* **displaySubtitles**:
* **addToBriefScreen**: Defaults to true
* **cloneConversation**: Defaults to false
* **interruptible**: Defaults to true

