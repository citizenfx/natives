---
ns: AUDIO
---
## LOAD_STREAM

```c
// 0x1F1F957154EC51DF 0x0D89599D
BOOL LOAD_STREAM(char* streamName, char* soundSet);
```

Load in named stream. Optionally can specify a sound set which contains the sound specified by name.

Names for the streams can be found [here](https://gist.github.com/4mmonium/2bd2c9c54d6ca5cbdb7b156a82a3a85a
), the list will be updated as more are found.

## Parameters
* **streamName**:
* **soundSet**: an optional sound set, default is null

## Return value
