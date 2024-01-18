---
ns: GRAPHICS
aliases: ["0x5CE62918F8D703C7"]
---
## TERRAINGRID_SET_COLOURS

```c
// 0x5CE62918F8D703C7 0xDF552973
void TERRAINGRID_SET_COLOURS(int lowR, int lowG, int lowB, int lowAlpha, int R, int G, int B, int Alpha, int highR, int highG, int highB, int highAlpha);
```


This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#_0xA356990E161C9E65) and [`TERRAINGRID_SET_PARAMS`](#_0x1C4FC5752BCD8E48). 
This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png

Old description:
Only called in golf and golf_mp  
parameters used are   
GRAPHICS::_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);  

## Parameters
* **lowR**: red value for the lower level
* **lowG**: green value for the lower level
* **lowB**: blue value for the lower level
* **lowAlpha**: alpha value for the lower level
* **R**: red value for the normal level
* **G**: green value for the normal level
* **B**: blue value for the normal level
* **Alpha**: alpha value for the normal level
* **highR**: red value for the upper level
* **highG**: green value for the upper level
* **highB**: blue value for the upper level
* **highAlpha**: alpha value for the upper level

## Examples
```cs
N_0xa356990e161c9e65(true); // toggle on/off

// this native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
N_0x1c4fc5752bcd8e48(-1114.121f, 220.789f, 63.78f, -1f, 0.85f, 0f, 15f, 15f, -1f, 20f, 40f, 63.78f, 0.2f);

// This native defines the colors (and alpha/opacity levels) for min, normal and max heights.
// (in this case: red for lower, white for normal, yellow for higher)
N_0x5ce62918f8d703c7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
```

