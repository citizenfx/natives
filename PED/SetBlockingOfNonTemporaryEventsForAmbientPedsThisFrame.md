---
ns: PED
aliases: ["0x9911F4A24485F653"]
---
## SET_BLOCKING_OF_NON_TEMPORARY_EVENTS_FOR_AMBIENT_PEDS_THIS_FRAME

```c
// 0x9911F4A24485F653 0x02A080C8
void SET_BLOCKING_OF_NON_TEMPORARY_EVENTS_FOR_AMBIENT_PEDS_THIS_FRAME(BOOL blockEvents);
```

```
Blocks non-temporary events for ambient peds in the frame that it is called in.
Must be called every frame for continued effect.
The mentioning of ambient peds seems to exclude law enforcement peds.
```

Seems similar to [`SET_BLOCKING_OF_NON_TEMPORARY_EVENTS`](#_0x9F8AA94D6D97DBF4),
uncertain if the only difference is how often it needs to be called. 

## Parameters
* **blockEvents**: Whether or not non-temporary events should be blocked for ambient peds.
