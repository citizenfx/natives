---
ns: ZONE
---
## GET_ZONE_SCUMMINESS

```c
// 0x5F7B268D15BA0739 0xB2FB5C4C
int GET_ZONE_SCUMMINESS(int zoneId);
```

Gets the zone scumminess level, used to calculate the cellphone signal strength.

```c
enum eZoneScumminess
{
    SCUMMINESS_POSH = 0,
    SCUMMINESS_NICE = 1,
    SCUMMINESS_ABOVE_AVERAGE = 2,
    SCUMMINESS_BELOW_AVERAGE = 3,
    SCUMMINESS_CRAP = 4,
    SCUMMINESS_SCUM = 5
}
```

## Parameters
* **zoneId**: The zone id

## Return value

The zone scumminess level