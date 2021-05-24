---
ns: HUD
aliases: ["0xEC9264727EEC0F28"]
---
## TAKE_CONTROL_OF_FRONTEND

```c
// 0xEC9264727EEC0F28 0xC06B763D
void TAKE_CONTROL_OF_FRONTEND();
```

Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.

To enable the keys again, use [`0x14621BB1DF14E2B2`](#_0x14621BB1DF14E2B2).
