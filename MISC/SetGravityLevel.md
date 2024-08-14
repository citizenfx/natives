---
ns: MISC
---
## SET_GRAVITY_LEVEL

```c
// 0x740E14FAD5842351 0x2D833F4A
void SET_GRAVITY_LEVEL(int level);
```

```c
enum eGravityLevel
{
    GRAV_EARTH = 0, // earth gravity 9.8m/s2
    GRAV_MOON = 1, // moon gravity 2.4m/s2
    GRAV_LOW = 2, // very low gravity
    GRAV_ZERO = 3 // zero gravity
}
```

## Parameters
* **level**: 

