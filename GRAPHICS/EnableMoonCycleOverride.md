---
ns: GRAPHICS
aliases: ["0x2C328AF17210F009", "_SET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH"]
---

## ENABLE_MOON_CYCLE_OVERRIDE

```c
// 0x2C328AF17210F009
void ENABLE_MOON_CYCLE_OVERRIDE(float phase);
```

Enable a custom moon cycle, allowing control of which lunar phase the moon is in.

Valid values are from `0.0` to `1.0`, with `0.5` representing a full moon.

| Value |   Lunar Phase   |
| :---: | :-------------: |
| `0.1` | Waxing Crescent |
| `0.2` |  First Quarter  |
| `0.3` | Waxing Gibbous  |
| `0.5` |    Full Moon    |
| `0.7` | Waning Gibbous  |
| `0.8` |  Third Quarter  |
| `0.9` | Waning Crescent |

The moon phase can be disabled with [DISABLE_MOON_CYCLE_OVERRIDE](#_0x2BF72AD5B41AA739)

## Parameters
- **phase**: A value indicating the moon cycle.

## Examples
```lua
EnableMoonCycleOverride(0.5)
```
