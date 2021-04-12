---
ns: MISC
---
## SET_FAKE_WANTED_LEVEL

```c
// 0x1454F2448DE30163 0x85B1C9FA
void SET_FAKE_WANTED_LEVEL(int fakeWantedLevel);
```

```
Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.
Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
```

## Parameters
* **fakeWantedLevel**: 

