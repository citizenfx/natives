---
ns: PED
---
## IS_ANY_PED_SHOOTING_IN_AREA

```c
// 0xA0D3D71EA1086C55 0x91833867
BOOL IS_ANY_PED_SHOOTING_IN_AREA(float minX, float minY, float minZ, float maxX, float maxY, float maxZ, BOOL bHighlightArea, BOOL bDo3DCheck);
```

Verifies whether a ped is firing within a specific area.

## Parameters
* **minX**: Minimum X vector
* **minY**: Minimum Y vector
* **minZ**: Minimum Z vector
* **maxX**: Maximum X vector
* **maxY**: Maximum Y vector
* **maxZ**: Maximum Z vector
* **bHighlightArea**: Highlights the area to check when set to `true`.
* **bDo3DCheck**: Conducts a 3D height check when set to `true`.

## Return value
`true` if a ped is within the defined area, `false` otherwise.
