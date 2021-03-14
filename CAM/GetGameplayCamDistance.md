---
ns: CAM
aliases: ["0xEE778F8C7E1142E2"]
apiset: client
---
## _GET_GAMEPLAY_CAM_DISTANCE

```c
// 0xEE778F8C7E1142E2 0xF3B148A6
int _GET_GAMEPLAY_CAM_DISTANCE(int camType);
```

## Parameters
* **camType**: int 0 - 7, usually it is <a href="#_0x19CAFA3C87F7C2FF">GET_GAMEPLAY_CAM_TYPE</a>

## Return value
Camera distance as an int
```c
enum CameraDistance : int
{
  Close = 0,
  Medium = 1,
  Far = 2,
  FirstPerson = 4
}
```

## Examples
```lua
local camType = GetGameplayCamType()
local distance = GetGameplayCamDistance(camType)

print(distance == 4 and "First Person!" or "Third Person!")
```
```c
// Example from decompiled script act_cinema
int iVar0 = 0;
while (iVar0 < 8)
{
      Global_2359302.f_58[iVar0] = CAM::_0xEE778F8C7E1142E2(iVar0);
      iVar0++;
}
```
