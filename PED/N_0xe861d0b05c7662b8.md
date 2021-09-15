---
ns: PED
---
## SET_PED_CAN_LOSE_PROPS_ON_DAMAGE

```c
// 0xE861D0B05C7662B8 0x2F9550C2
void SET_PED_CAN_LOSE_PROPS_ON_DAMAGE(Ped ped, BOOL p1, int p2);
```

It basically makes the ped lose (or not lose) their props (like glasses or helmets/hat) when someone punches or pushes the ped.
I'm pretty sure this is what's being used in GTA:O to keep players from knocking other player's hats/glasses off when in combat.

This is a toggle so no need to loop it every frame.


## Parameters
* **ped**: The target ped
* **p1**: true = allow props to fall off, false = don't let props fall off when in combat
* **p2**: purpose unknown, usually 0

## Examples
```lua
-- Make the ped NOT lose their props when they're hit or pushed.
SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)

-- Make the ped LOSE their props when they're hit or pushed.
SetPedCanLosePropsOnDamage(PlayerPedId(), true, 0)
```
