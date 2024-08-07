---
ns: WEAPON
---
## SET_PED_WEAPON_TINT_INDEX

```c
// 0x50969B9B89ED5738 0xEB2A7B23
void SET_PED_WEAPON_TINT_INDEX(Ped ped, Hash weaponHash, int tintIndex);
```

```
tintIndex can be the following:  
0 : Default/Black
1 : Green
2 : Gold
3 : Pink
4 : Army
5 : LSPD
6 : Orange
7 : Platinum

tintIndex for MK2 weapons :
0 : Classic Black
1 : Classic Gray
2 : Classic Two-Tone
3 : Classic White
4 : Classic Beige
5 : Classic Green
6 : Classic Blue
7 : Classic Earth
8 : Classic Brown & Black
9 : Red Contrast
10 : Blue Contrast
11 : Yellow Contrast
12 : Orange Contrast
13 : Bold Pink
14 : Bold Purple & Yellow
15 : Bold Orange
16 : Bold Green & Purple
17 : Bold Red Features
18 : Bold Green Features
19 : Bold Cyan Features
20 : Bold Yellow Features
21 : Bold Red & White
22 : Bold Blue & White
23 : Metallic Gold
24 : Metallic Platinum
25 : Metallic Gray & Lilac
26 : Metallic Purple & Lime
27 : Metallic Red
28 : Metallic Green
29 : Metallic Blue
30 : Metallic White & Aqua
31 : Metallic Orange & Yellow
32 : Mettalic Red and Yellow
```

## Parameters
* **ped**: The target ped
* **weaponHash**: The target weapon hash
* **tintIndex**: Tint for weapon hash
