---
ns: PED
---
## SET_PED_MAX_TIME_UNDERWATER

```c
// 0x6BA428C528D9E522 0x082EF240
void SET_PED_MAX_TIME_UNDERWATER(Ped ped, float value);
```
Set the maximum time a ped can stay underwater. Maximum seems to be 50 seconds.

## Parameters
* **ped**: Ped id.
* **value**: Time in seconds. Maximum is 50.0, any value above will be changed to 50.0.

