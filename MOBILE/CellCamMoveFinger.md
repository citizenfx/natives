---
ns: MOBILE
aliases: ["_MOVE_FINGER"]
---
## _CELL_CAM_MOVE_FINGER

```c
// 0x95C9E72F3D7DEC9B
void _CELL_CAM_MOVE_FINGER(int direction);
```

Moves the character's finger in a swiping motion when holding a cellphone in their hand through the use of the [CREATE_MOBILE_PHONE](#_0xA4E8E696C532FBC7) native.
The direction parameter is limited from one to five (inclusive), with the direction of the swipe following the order: up, down, left, right, and tapping the screen.

## Parameters
* **direction**: Integer representing the direction the character will swipe.

## Examples
```lua
-- Create a mobile phone object and animate the character
CreateMobilePhone(0)

Wait(2000)

-- Swipe up
CellCamMoveFinger(1)

Wait(1500)

-- Swipe right
CellCamMoveFinger(4)

Wait(1500)

-- Tap the screen
CellCamMoveFinger(5)
```
