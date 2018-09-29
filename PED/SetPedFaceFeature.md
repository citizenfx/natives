---
ns: PED
---
## _SET_PED_FACE_FEATURE

```c
// 0x71A5C1DBA060049E
void _SET_PED_FACE_FEATURE(Ped ped, int index, float scale);
```

```
Sets the various freemode face features, e.g. nose length, chin shape. Scale ranges from -1.0 to 1.0.  
Index can be 0   
Edit:---->Thanks to the first user.  
    Enum Face_Feature  
        Nose_Width  
        Nose_Peak_Hight  
        Nose_Peak_Lenght  
        Nose_Bone_High  
        Nose_Peak_Lowering  
        Nose_Bone_Twist  
        EyeBrown_High  
        EyeBrown_Forward  
        Cheeks_Bone_High  
        Cheeks_Bone_Width  
        Cheeks_Width  
        Eyes_Openning  
        Lips_Thickness  
        Jaw_Bone_Width 'Bone size to sides  
        Jaw_Bone_Back_Lenght 'Bone size to back  
        Chimp_Bone_Lowering 'Go Down  
        Chimp_Bone_Lenght 'Go forward  
        Chimp_Bone_Width  
        Chimp_Hole  
        Neck_Thikness  
    End Enum  
Example in VB.Net  
Public Shared Sub SET_PED_FACE_FEATURE(FreemodePed As Ped, Index As Face_Feature, Scale As Single)  
Native.Function.Call(Native.Hash._SET_PED_FACE_FEATURE, FreemodePed, Index, Scale)  
End Sub  
```

## Parameters
* **ped**: 
* **index**: 
* **scale**: 

