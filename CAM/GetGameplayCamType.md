---
ns: CAM
aliases: ["0x19CAFA3C87F7C2FF"]
apiset: client
---
## _GET_GAMEPLAY_CAM_TYPE

```c
// 0x19CAFA3C87F7C2FF
int _GET_GAMEPLAY_CAM_TYPE();
```

## Return value
Returns a value 0 - 7:
```c
enum GameplayCamTypes : int 
{
    OnFoot = 0,
    Car = 1,
    Bike = 2, // Both motorcycle and bicycle
    Boat = 3,
    Plane = 4,
    Submarine = 5,
    Helicopter = 6
    Unknown = 7
}
```
