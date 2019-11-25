---
ns: OBJECT
aliases: ["0x3B2FD68DB5F8331C"]
---
## _SET_OBJECT_COLOUR

```c
// 0x3B2FD68DB5F8331C 0xA88C6937
void _SET_OBJECT_COLOUR(Object object, Any toggle, int R, int G, int B);
```

Seems to set the colour of the prop. Haven't really tested it on other props.
Only appears in am_mp_nightclub.c for the nightclub dancefloor.

Not sure what p1 does, seems to only ever be '1' in scripts.

```
NativeDB Parameter 1: BOOL toggle
NativeDB Removed Parameter 3: int R
NativeDB Removed Parameter 4: int G
NativeDB Removed Parameter 5: int B
```

## Parameters
* **object**: 
* **toggle**: 
* **R**:
* **G**:
* **B**:
