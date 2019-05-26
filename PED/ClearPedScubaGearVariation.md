---
ns: PED
aliases: ["0xB50EB4CCB29704AC", "_REMOVE_PED_SCUBA_GEAR_NOW"]
---
## CLEAR_PED_SCUBA_GEAR_VARIATION

```c
// 0xB50EB4CCB29704AC 0x080275EE
void CLEAR_PED_SCUBA_GEAR_VARIATION(Ped ped);
```

Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.


## Parameters
* **ped**: The ped to remove the scuba gear from.

