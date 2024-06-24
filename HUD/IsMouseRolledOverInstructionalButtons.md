---
ns: HUD
aliases: ["0x3D9ACB1EB139E702", "_IS_MOUSE_CURSOR_ABOVE_INSTRUCTIONAL_BUTTONS"]
---
## IS_MOUSE_ROLLED_OVER_INSTRUCTIONAL_BUTTONS

```c
// 0x3D9ACB1EB139E702
cs_type(Any) BOOL IS_MOUSE_ROLLED_OVER_INSTRUCTIONAL_BUTTONS();
```

**Note:** The buttons need to support mouse (with the `TOGGLE_MOUSE_SUPPORT` scaleform movie method) for it to return `true`.

## Return value
Returns `true` if the cursor is hovering above instructional buttons.
