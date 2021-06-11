---
ns: HUD
aliases: ["0xB81656BC81FE24D1", "SET_BLIP_FRIENDLY"]
---
## SHOW_OUTLINE_INDICATOR_ON_BLIP

```c
// 0xB81656BC81FE24D1 0x8DE82C15
void SHOW_OUTLINE_INDICATOR_ON_BLIP(Blip blip, BOOL toggle);
```

Toggles a cyan outline around the blip.

Color can be changed with [`SET_BLIP_SECONDARY_COLOUR`](#_0x14892474891E09EB). Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A)). 

## Parameters
* **blip**: The blip to toggle the outline on.
* **toggle**: Enables or disables the outline.

