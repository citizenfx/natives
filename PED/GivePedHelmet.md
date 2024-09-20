---
ns: PED
---
## GIVE_PED_HELMET

```c
// 0x54C7C4A94367717E 0x1862A461
void GIVE_PED_HELMET(Ped ped, BOOL cannotRemove, int helmetFlag, int textureIndex);
```

Gives the ped a helmet. Can be removed by invoking [`REMOVE_PED_HELMET`](#_0xA7B2458D0AD6DED8).

```c
enum ePedCompFlags {
  PV_FLAG_NONE                  = 0, // 0
  PV_FLAG_BULKY                 = 1, // 1<<0
  PV_FLAG_JOB                   = 2, // 1<<1
  PV_FLAG_SUNNY                 = 4, // 1<<2
  PV_FLAG_WET                   = 8, // 1<<3
  PV_FLAG_COLD                  = 16, // 1<<4
  PV_FLAG_NOT_IN_CAR            = 32, // 1<<5
  PV_FLAG_BIKE_ONLY             = 64, // 1<<6
  PV_FLAG_NOT_INDOORS           = 128, // 1<<7
  PV_FLAG_FIRE_RETARDENT        = 256, // 1<<8
  PV_FLAG_ARMOURED              = 512, // 1<<9
  PV_FLAG_LIGHTLY_ARMOURED      = 1024, // 1<<10
  PV_FLAG_HIGH_DETAIL           = 2048, // 1<<11
  PV_FLAG_DEFAULT_HELMET        = 4096, // 1<<12
  PV_FLAG_RANDOM_HELMET         = 8192, // 1<<13
  PV_FLAG_SCRIPT_HELMET         = 16384, // 1<<14
  PV_FLAG_FLIGHT_HELMET         = 32768, // 1<<15
  PV_FLAG_HIDE_IN_FIRST_PERSON  = 65536, // 1<<16
  PV_FLAG_USE_PHYSICS_HAT_2     = 131072, // 1<<17
  PV_FLAG_PILOT_HELMET          = 262144 // 1<<18
};
```

## Parameters
* **ped**: Ped index.
* **cannotRemove**: Can remove helmet or not.
* **helmetFlag**: Flag for the helmet, the helmet appearance depends on the ped it's being applied on.
* **textureIndex**: Texture index; any value other than `-1` will overwrite the default texture index. The helmet texture index needs to be valid for it to be applied.
