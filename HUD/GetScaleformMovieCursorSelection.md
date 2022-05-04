---
ns: HUD
aliases: ["0x632B2940C67F4EA9"]
---
## _GET_SCALEFORM_MOVIE_CURSOR_SELECTION
 
```c
// 0x632B2940C67F4EA9
BOOL _GET_SCALEFORM_MOVIE_CURSOR_SELECTION(int scaleformHandle, cs_type(Any*) int* selectionType, cs_type(Any*) int* slotIndex, Any* p3);
```
 
Gets mouse selection data from scaleforms with mouse support. Must be checked every frame.
Selection types, found in MOUSE_EVENTS.as:
MOUSE_DRAG_OUT = 0;
MOUSE_DRAG_OVER = 1;
MOUSE_DOWN = 2;
MOUSE_MOVE = 3;
MOUSE_UP = 4;
MOUSE_PRESS = 5;
MOUSE_RELEASE = 6;
MOUSE_RELEASE_OUTSIDE = 7;
MOUSE_ROLL_OUT = 8;
MOUSE_ROLL_OVER = 9;
MOUSE_WHEEL_UP = 10;
MOUSE_WHEEL_DOWN = 11;
 
Scaleforms that this works with: 
- COLOUR_SWITCHER_02
- MP_RESULTS_PANEL
- MP_NEXT_JOB_SELECTION
- SC_LEADERBOARD
Probably works with other scaleforms, needs more research.
In order to use this Native you MUST have controls 239, 240, 237, 238 enabled!
 
## Parameters
* **scaleformHandle**: Handle of the scaleform
* **selectionType**:  
* **slotIndex**: Index of the slot the mouse is hovering on
* **p3**: Returns the optional parameters specified in the MOUSE_EVENT api callback as specified in MouseBtn.as sendMouseEvent function.

Taken from MouseBtn.as:
 ```as
	function sendMouseEvent(id)
	{
		var _loc4_ = [id, this._name]; // this is the array of parameters to be sent to the internal callback function and the MOUSE_EVT api callback back to the game.
		var _loc3_ = this.optionalMouseArgs.length;
		if (_loc3_ > 0)
		{
			var _loc2_ = 0;
			while (_loc2_ < _loc3_)
			{
				_loc4_.push(this.optionalMouseArgs[_loc2_]);
				_loc2_ = _loc2_ + 1;
			}
		}
		if (this.isMouseEnabled)
		{
			if (this.callback)
			{
				this.callback.apply(this,[id, this, this.callbackArgs]); // internal scaleform callback
			}
			this.MOUSE_EVT.triggerEvent(_loc4_); // external api scaleform callback.
		}
	}
 ```
 Returns item index if using the COLOUR_SWITCHER_02 scaleform.
## Return value
