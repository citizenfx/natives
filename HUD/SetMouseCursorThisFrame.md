---
ns: HUD
aliases: ["_SHOW_CURSOR_THIS_FRAME", "_SET_MOUSE_CURSOR_ACTIVE_THIS_FRAME"]
---
## SET_MOUSE_CURSOR_THIS_FRAME

```c
// 0xAAE7CE1D63167423
void SET_MOUSE_CURSOR_THIS_FRAME();
```

Sets the mouse pointer to be active on current frame.

## Examples
```lua
CreateThread(function()
  while true do
    Wait(0)
    SetMouseCursorThisFrame()
  end
end)
```
