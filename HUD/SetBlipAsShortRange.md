---
ns: HUD
---
## SET_BLIP_AS_SHORT_RANGE

```c
// 0xBE8BE4FE60E27B72 0x5C67725E
void SET_BLIP_AS_SHORT_RANGE(Blip blip, BOOL toggle);
```

Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.

## Parameters
* **blip**: The blip handle.
* **toggle**: True to only display the blip as 'short range', false to display the blip from a longer distance.

