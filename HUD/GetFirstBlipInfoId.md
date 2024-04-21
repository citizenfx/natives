---
ns: HUD
---
## GET_FIRST_BLIP_INFO_ID

```c
// 0x1BEDE233E6CD2A1F 0x64C0273D
Blip GET_FIRST_BLIP_INFO_ID(int blipSprite);
```

Also see [`GET_NEXT_BLIP_INFO_ID`](#_0x14F96AA50D6FBEA7) for an example.

## Parameters
* **blipSprite**: Sprite ID, see the [Blips Game Reference](https://docs.fivem.net/docs/game-references/blips/) for the full list.

## Return value
Returns the first blip ID in an interator that has the specified blip sprite.
