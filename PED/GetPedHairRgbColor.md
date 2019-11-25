---
ns: PED
aliases: ["0x4852FC386E2E1BB5","_GET_HAIR_RGB_COLOR"]
---
## _GET_PED_HAIR_RGB_COLOR

```c
// 0x4852FC386E2E1BB5
void _GET_PED_HAIR_RGB_COLOR(int hairColorIndex, int* outR, int* outG, int* outB);
```

Input: Haircolor index, value between 0 and 63 (inclusive).
Output: RGB values for the haircolor specified in the input.

This is used with the hair color swatches scaleform.

Use [`_0x013E5CFC38CD5387`](#_0x013E5CFC38CD5387) to get the makeup colors.


## Parameters
* **hairColorIndex**: The hair color index. Value between 0-63 (inclusive).
* **outR**: Output red value.
* **outG**: Output green value.
* **outB**: Output blue value.

