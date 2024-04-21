---
ns: AUDIO
---
## OVERRIDE_UNDERWATER_STREAM

```c
// 0xF2A9CDABCEA04BD6 0x9A083B7E
void OVERRIDE_UNDERWATER_STREAM(cs_type(AnyPtr) char* streamName, BOOL override);
```

This native allows a scripter to override the current underwater stream.
It needs to be called before going into the water

It needs to also be called with OVERRIDE_UNDERWATER_STREAM("", false) in order to stop overriding.

## Parameters
* **streamName**:
* **override**:

