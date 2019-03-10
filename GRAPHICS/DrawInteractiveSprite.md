---
ns: GRAPHICS
aliases: ["0x2BC54A8188768488"]
---
## _DRAW_INTERACTIVE_SPRITE

```c
// 0x2BC54A8188768488
void _DRAW_INTERACTIVE_SPRITE(char* textureDict, char* textureName, float screenX, float screenY, float width, float height, float heading, int red, int green, int blue, int alpha);
```

Similar to [_DRAW_SPRITE](#_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
These seem to be the only dicts ever requested by this native:
```
prop_screen_biker_laptop
Prop_Screen_GR_Disruption
Prop_Screen_TaleOfUs
prop_screen_nightclub
Prop_Screen_IE_Adhawk
prop_screen_sm_free_trade_shipping
prop_screen_hacker_truck
MPDesktop
Prop_Screen_Nightclub
And a few others
```

## Parameters
* **textureDict**: Name of texture dictionary to load texture from
* **textureName**: Name of texture to load from texture dictionary
* **screenX**: Screen X
* **screenY**: Screen Y
* **width**: Scale X
* **height**: Scale Y
* **heading**: Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
* **red**: Color
* **green**: Color
* **blue**: Color
* **alpha**: Opacity level
