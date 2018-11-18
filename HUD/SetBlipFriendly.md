---
ns: HUD
aliases: ["0xB81656BC81FE24D1"]
---
## _SET_BLIP_FRIENDLY

```c
// 0xB81656BC81FE24D1 0x8DE82C15
void _SET_BLIP_FRIENDLY(Blip blip, BOOL toggle);
```

Highlights a blip by a cyan color circle.
Color can be changed with SET_BLIP_SECONDARY_COLOUR. Enabling this circle will override the "crew" and "friend" half-circles (see [`_SET_BLIP_CREW`](#_0xDCFB5D4DB8BF367E) and [`_SET_BLIP_FRIEND`](#_0x23C3EB807312F01A)). 

Oddly enough, this native is called _SET_BLIP_FRIENDLY, but the color of the circle is only changable for the 'crew' half-circle (using SET_BLIP_SECONDARY_COLOUR), the 'friendly' side can NOT be changed and will always stay cyan/blue. This makes it seem more likely that this should be called _SET_BLIP_CREW_CIRCLE or something similar?


## Parameters
* **blip**: The blip to toggle the circle on.
* **toggle**: Enables or disables the circle.

