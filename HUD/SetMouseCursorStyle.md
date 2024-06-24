---
ns: HUD
aliases: ["0x8DB8CFFD58B62552","_SET_CURSOR_SPRITE", "_SET_MOUSE_CURSOR_SPRITE"]
---
## SET_MOUSE_CURSOR_STYLE

```c
// 0x8DB8CFFD58B62552
void SET_MOUSE_CURSOR_STYLE(int style);
```

Changes the mouse style.

```c
enum eMousePointerStyle {
	MOUSE_CURSOR_STYLE_ARROW = 1,
	MOUSE_CURSOR_STYLE_ARROW_DIMMED,
	MOUSE_CURSOR_STYLE_HAND_OPEN,
	MOUSE_CURSOR_STYLE_HAND_GRAB,
	MOUSE_CURSOR_STYLE_HAND_MIDDLE_FINGER,
	MOUSE_CURSOR_STYLE_ARROW_LEFT,
	MOUSE_CURSOR_STYLE_ARROW_RIGHT,
	MOUSE_CURSOR_STYLE_ARROW_UP,
	MOUSE_CURSOR_STYLE_ARROW_DOWN,
	MOUSE_CURSOR_STYLE_ARROW_TRIMMING,
	MOUSE_CURSOR_STYLE_ARROW_PLUS,
	MOUSE_CURSOR_STYLE_ARROW_MINUS
};
```

Available styles are:
| ID  | Description         |
| :-: | :-----------------: |
| 1   | Arrow               |
| 2   | Arrow (Dimmed)      |
| 3   | Open Hand           |
| 4   | Hand Grab           |
| 5   | Click/Middle Finger |
| 6   | Left Arrow          |
| 7   | Right Arrow         |
| 8   | Up Arrow            |
| 9   | Down Arrow          |
| 10  | Arrow Trimming      |
| 11  | Arrow Plus          |
| 12  | Arrow Minus         |

## Parameters
* **style**: Which sprite to change to, see declared enum `eMousePointerStyle`.

