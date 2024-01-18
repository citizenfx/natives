---
ns: STREAMING
---
## SET_MODEL_AS_NO_LONGER_NEEDED

```c
// 0xE532F5D78798DAAB 0xAE0F069E
void SET_MODEL_AS_NO_LONGER_NEEDED(Hash model);
```

Releases the script ownership assigned by REQUEST\_MODEL. This command should be used when done using a specific model hash in script.

## Parameters
* **model**: The model to release ownership of.

