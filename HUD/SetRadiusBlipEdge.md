---
ns: HUD
aliases: ["0x25615540D894B814"]
---

## SET_RADIUS_BLIP_EDGE

```c
// 0x25615540D894B814 0x40E25DB8
void SET_RADIUS_BLIP_EDGE(Blip blip, BOOL toggle);
```

```
Enabling this on a radius blip will make it outline only. See https://imgur.com/a/lNMfySU
```

## Parameters

- **blip**: The actual blip id
- **toggle**: Whether to turn off or on the effect

## Example

Assume that the `blip` variable is a blip created just above this example.

```lua
SetRadiusBlipEdge(blip, true)
```
