---
ns: PED
---
## GET_PED_BONE_COORDS

```c
// 0x17C07FC640E86B4E 0x4579CAB1
Vector3 GET_PED_BONE_COORDS(Ped ped, int boneId, float offsetX, float offsetY, float offsetZ);
```

Gets the position of the specified bone of the specified ped.

## Parameters
* **ped**: The ped to get the bone position from.
* **boneId**: The bone ID, not the bone index.
* **offsetX**: The X offset relative to the bone's rotation.
* **offsetY**: The Y offset relative to the bone's rotation.
* **offsetZ**: The Z offset relative to the bone's rotation.

## Return value
