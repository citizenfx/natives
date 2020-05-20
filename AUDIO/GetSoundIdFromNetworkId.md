---
ns: AUDIO
aliases: ["0x75262FD12D0A1C84"]
---
## GET_SOUND_ID_FROM_NETWORK_ID

```c
// 0x75262FD12D0A1C84 0xD064D4DC
int GET_SOUND_ID_FROM_NETWORK_ID(int netId);
```

```
The opposite of GET_NETWORK_ID_FROM_SOUND_ID.
Returns the sound id as an integer.
```

## Parameters
* **netId**: Network ID of sound. Can be found from GET_NETWORK_ID_FROM_SOUND_ID

## Return value
Integer representing a sound id.