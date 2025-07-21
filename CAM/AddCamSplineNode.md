---
ns: CAM
---
## ADD_CAM_SPLINE_NODE

```c
// 0x8609C75EC438FB3B 0xAD3C7EAA
void ADD_CAM_SPLINE_NODE(Cam camera, float x, float y, float z, float xRot, float yRot, float zRot, int duration, int flags, int rotOrder);
```


Rotation order: For what I've tested so far cam natives only have XYZ rotation orden available which equals to 0, using another number gets the same result.

Flags:
```c
enum CAM_SPLINE_NODE_FLAGS {
	CAM_SPLINE_NODE_NO_FLAGS			= 0,
	CAM_SPLINE_NODE_SMOOTH_ROT			= 1,	// Additional smoothing is applied to the transition in orientation between the previous node and the specified node. This smoothing can reduce the appearance of discontinuities at the nodes, but may not be desirable where a linear transition is required.
	CAM_SPLINE_NODE_SMOOTH_LENS_PARAMS	= 2,	// Additional smoothing is applied to the transition in lens paramaters, such as FOV and motion blur strength, between the previous node and the specified node. This smoothing can reduce the appearance of discontinuities at the nodes, but may not be desirable where a linear transition is required.
	CAM_SPLINE_NODE_EASE_IN				= 4,	// Per-node ease in
	CAM_SPLINE_NODE_EASE_OUT			= 8,	// Per-node ease out
	CAM_SPLINE_NODE_EASE_INOUT			= 16	// Per-node ease in and out
}
```

## Parameters
* **camera**: 
* **x**: The X coordinate
* **y**: The Y coordinate
* **z**: The Z coordinate
* **xRot**: The pitch (X-axis) rotation in degrees
* **yRot**: The roll (Y-axis) rotation in degrees
* **zRot**: The yaw (Z-axis) rotation in degrees
* **duration**: The time taken to transition from the previous node to this node, in milliseconds.
* **flags**: Read description.
* **rotOrder**: Rotation order to use. Read description
