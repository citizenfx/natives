---
ns: FILES
---
## GET_DLC_WEAPON_DATA

```c
// 0x79923CD21BECE14E 0xD88EC8EA
BOOL GET_DLC_WEAPON_DATA(int dlcWeaponIndex, int* outData);
```

```
dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
struct DlcWeaponData  
{  
int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
int padding1;  
int weaponHash;  
int padding2;  
int unk;  
int padding3;  
int weaponCost;  
int padding4;  
int ammoCost;  
int padding5;  
int ammoType;  
int padding6;  
int defaultClipSize;  
int padding7;  
char nameLabel[64];  
char descLabel[64];  
char desc2Label[64]; // usually "the" + name  
char upperCaseNameLabel[64];  
};  
```

## Parameters
* **dlcWeaponIndex**: 
* **outData**: 

## Return value
