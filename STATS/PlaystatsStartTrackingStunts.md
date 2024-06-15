---
ns: STATS
aliases: ["0x928DBFB892638EF3", "_PLAYSTATS_STUNT_PERFORMED_EVENT_ALLOW_TRIGGER"]
---
## PLAYSTATS_START_TRACKING_STUNTS

```c
// 0x928DBFB892638EF3
void PLAYSTATS_START_TRACKING_STUNTS();
```

Allows stunts to be triggered and sent as a `CEventNetworkStuntPerformed` event.

Event types are shown below:

```c
enum eTrackedStuntType
{
    ST_FRONTFLIP,
    ST_BACKFLIP,
    ST_SPIN,
    ST_WHEELIE,
    ST_STOPPIE,
    ST_BOWLING_PIN,
    ST_FOOTBALL,
    ST_ROLL
};
```
