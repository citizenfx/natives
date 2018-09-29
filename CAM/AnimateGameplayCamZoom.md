---
ns: CAM
---
## _ANIMATE_GAMEPLAY_CAM_ZOOM

```c
// 0xDF2E1F7742402E81 0x77340650
void _ANIMATE_GAMEPLAY_CAM_ZOOM(float p0, float distance);
```

```
Seems to animate the gameplay camera zoom.  
Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);  
will animate the camera zooming in from 1000 meters away.  
Game scripts use it like this:  
// Setting this to 1 prevents V key from changing zoom  
PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);  
// These restrict how far you can move cam up/down left/right  
CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);  
CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);  
CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);  
```

## Parameters
* **p0**: 
* **distance**: 

