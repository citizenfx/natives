---
ns: PLAYER
aliases: ["0x9A987297ED8BD838", "_SWITCH_CRIME_TYPE"]
---
## SUPPRESS_CRIME_THIS_FRAME

```c
// 0x9A987297ED8BD838 0x59B5C2A2
void SUPPRESS_CRIME_THIS_FRAME(Player player, int crimeType);
```

Suppresses a crime for a given player for this frame only.

**Note:** This native needs to be executed inside a thread if a crime is meant to be suppressed for a given amount of time.

## Parameters
* **player**: The player we are suppressing the crime for.
* **crimeType**: The crime to suppress, see [`REPORT_CRIME`](#_0xE9B09589827545E7) for available types.
