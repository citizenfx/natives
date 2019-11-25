---
ns: FILE
---
## GET_DLC_WEAPON_COMPONENT_DATA

```c
// 0x6CF598A2957C2BF8 0x4B83FCAF
BOOL GET_DLC_WEAPON_COMPONENT_DATA(int dlcWeaponIndex, int dlcWeapCompIndex, Any* ComponentDataPtr);
```

```
p0 seems to be the weapon index  
p1 seems to be the weapon component index  
struct DlcComponentData{  
int attachBone;  
int padding1;  
int bActiveByDefault;  
int padding2;  
int unk;  
int padding3;  
int componentHash;  
int padding4;  
int unk2;  
int padding5;  
int componentCost;  
int padding6;  
char nameLabel[64];  
char descLabel[64];  
};  
```

```
NativeDB Parameter 2: int* ComponentDataPtr
```

## Parameters
* **dlcWeaponIndex**: 
* **dlcWeapCompIndex**: 
* **ComponentDataPtr**: 

## Return value
