---
ns: AUDIO
---
## SET_VARIABLE_ON_STREAM

```c
// 0x2F9D3834AEB9EF79 0xF67BB44C
void SET_VARIABLE_ON_STREAM(char* variableName, float variableAudio);
```

Sets a variable on the current streaming sound.

### Variable names:
- INOUT
- ZoomLevel
- Monkey_Stream
- PedDensity
- Crowd_Size
- ArmWrestlingIntensity
- distance_to_ship: Never used, seen it in a commented code.
- above_water: Same as distance_to_ship

## Parameters
* **variableName**: Variable name to set a value.
* **variableAudio**: Value to set.

