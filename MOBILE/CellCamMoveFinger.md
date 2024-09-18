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

```c
enum eCellInput {
    CELL_INPUT_NONE = 0,
    CELL_INPUT_UP = 1,
    CELL_INPUT_DOWN = 2,
    CELL_INPUT_LEFT = 3,
    CELL_INPUT_RIGHT = 4,
    CELL_INPUT_SELECT = 5
}
```

## Parameters
* **direction**: The direction to swipe to, refer to `eCellInput` enum.

## Examples
```lua
CreateThread(function()
	local eCellInput = {
		CELL_INPUT_NONE = 0,
		CELL_INPUT_UP = 1,
		CELL_INPUT_DOWN = 2,
		CELL_INPUT_LEFT = 3,
		CELL_INPUT_RIGHT = 4,
		CELL_INPUT_SELECT = 5
	}
	-- Create a mobile phone object and animate the character
	CreateMobilePhone(eCellInput.CELL_INPUT_NONE)

	Wait(2000)

	-- Swipe up
	CellCamMoveFinger(eCellInput.CELL_INPUT_UP)

	Wait(1500)

	-- Swipe right
	CellCamMoveFinger(eCellInput.CELL_INPUT_RIGHT)

	Wait(1500)

	-- Tap the screen
	CellCamMoveFinger(eCellInput.CELL_INPUT_SELECT)
end)
```
