---
ns: MISC
---
## ADD_STUNT_JUMP_ANGLED

```c
// 0xBBE5D803A5360CBF 0xB9B7E777
int ADD_STUNT_JUMP_ANGLED(float x1, float y1, float z1, float x2, float y2, float z2, float radius1, float x3, float y3, float z3, float x4, float y4, float z4, float radius2, float camX, float camY, float camZ, int unk1, int unk2, int unk3);
```

Creates a new stunt jump. 

The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD\_STUNT\_JUMP\_**ANGLED**.

Info about the specific 'parameter sections':


**x1, y1, z1, x2, y2, z2 and radius1:**

First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.


**x3, y3, z3, x4, y4, z4 and radius2:**

Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).


**camX, camY and camZ:**

The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.


**unk1, unk2 and unk3:**

Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.


Visualized example in-game:

![](https://d.fivem.dev/2019-03-15_18-24_c7802_846.png)

Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY


## Parameters
* **x1**: Entry zone bottom left corner x.
* **y1**: Entry zone bottom left corner y.
* **z1**: Entry zone bottom left corner z.
* **x2**: Entry zone top right corner x.
* **y2**: Entry zone top right corner y.
* **z2**: Entry zone top right corner z.
* **radius1**: Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.
* **x3**: Landing zone start corner coordinate x.
* **y3**: Landing zone start corner coordinate y.
* **z3**: Landing zone start corner coordinate z.
* **x4**: Landing zone end corner coordinate x.
* **y4**: Landing zone end corner coordinate y.
* **z4**: Landing zone end corner coordinate z.
* **radius2**: Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.
* **camX**: Stunt (cinematic) camera x position.
* **camY**: Stunt (cinematic) camera y position.
* **camZ**: Stunt (cinematic) camera z position.
* **unk1**: always 150
* **unk2**: always 0
* **unk3**: always 0

## Return value
The ID of the stuntjump that was created.

## Examples
```lua
local data = {
    entry = {
        leftbottom = vector3(-963.1714, -2778.506, 14.47828),
        righttop = vector3(-965.7361, -2777.121, 19.46395),
        radius = 8.0
    },
    landing = {
        start = vector3(-988.8297, -2830.789, 11.96478),
        ending = vector3(-1027.989, -2895.436, 16.95805),
        radius = 18.0
    },
    camcoords = vector3(-967.196, -2811.716, 14.5521),
    unk1 = 150,
    unk2 = 0,
    unk3 = 0

}

local stuntjump = AddStuntJumpAngled(
    data.entry.leftbottom, 
    data.entry.righttop,
    data.entry.radius,
    data.landing.start,
    data.landing.ending,
    data.landing.radius,
    data.camcoords,
    data.unk1,
    data.unk2,
    data.unk3
)

print("New stunt jump added, id: " .. stuntjump)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        DrawLine(data.entry.leftbottom, data.entry.righttop, 255, 255, 255, 255)
        DrawLine(data.landing.start, data.landing.ending, 255, 0, 0, 255)
        DrawMarker(28, data.camcoords.x, data.camcoords.y, data.camcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 150, false, false, 2, false, nil, nil, false)
    end
end)
```