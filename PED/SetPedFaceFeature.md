---
ns: PED
---
## _SET_PED_FACE_FEATURE

```c
// 0x71A5C1DBA060049E
void _SET_PED_FACE_FEATURE(Ped ped, int index, float scale);
```

Sets the various freemode face features, e.g. nose length, chin shape.  

**Indexes (From 0 to 19):**

Parentheses indicate morph scale/direction as in (-1.0 to 1.0)

* **0**: Nose Width (Thin/Wide)
* **1**: Nose Peak (Up/Down)
* **2**: Nose Length (Long/Short)
* **3**: Nose Bone Curveness (Crooked/Curved)
* **4**: Nose Tip (Up/Down)
* **5**: Nose Bone Twist (Left/Right)
* **6**: Eyebrow (Up/Down)
* **7**: Eyebrow (In/Out)
* **8**: Cheek Bones (Up/Down)
* **9**: Cheek Sideways Bone Size (In/Out)
* **10**: Cheek Bones Width (Puffed/Gaunt)
* **11**: Eye Opening (Both) (Wide/Squinted)
* **12**: Lip Thickness (Both) (Fat/Thin)
* **13**: Jaw Bone Width (Narrow/Wide)
* **14**: Jaw Bone Shape (Round/Square)
* **15**: Chin Bone (Up/Down)
* **16**: Chin Bone Length (In/Out or Backward/Forward)
* **17**: Chin Bone Shape (Pointed/Square)
* **18**: Chin Hole (Chin Bum)
* **19**: Neck Thickness (Thin/Thick)

**Note:**

You may need to call [`SetPedHeadBlendData`](#_0x9414E18B9434C2FE) prior to calling this native in order for it to work.

## Parameters
* **ped**: The ped entity
* **index**: An integer ranging from 0 to 19
* **scale**: A float ranging from -1.0 to 1.0

