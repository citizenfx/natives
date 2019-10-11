---
ns: PED
aliases: ["0x013E5CFC38CD5387","_GET_MAKEUP_RGB_COLOR"]
---
## _GET_PED_MAKEUP_RGB_COLOR

```c
// 0x013E5CFC38CD5387
void _GET_PED_MAKEUP_RGB_COLOR(int makeupColorIndex, int* outR, int* outG, int* outB);
```

Input: Makeup color index, value between 0 and 63 (inclusive).
Output: RGB values for the makeup color specified in the input.

This is used with the makeup color swatches scaleform.

Use [`_0x4852FC386E2E1BB5`](#_0x4852FC386E2E1BB5) to get the hair colors.


## Parameters
* **makeupColorIndex**: The hair color index. Value between 0-63 (inclusive).
* **outR**: Output red value.
* **outG**: Output green value.
* **outB**: Output blue value.

