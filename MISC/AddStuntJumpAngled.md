---
ns: MISC
---
## ADD_STUNT_JUMP_ANGLED

```c
// 0xBBE5D803A5360CBF 0xB9B7E777
int ADD_STUNT_JUMP_ANGLED(float x1, float y1, float z1, float x2, float y2, float z2, float radius1, float x3, float y3, float z3, float x4, float y4, float z4, float radius2, float camX, float camY, float camZ, int reward, int set, bool camOptional);
```

Creates a new stunt jump. 

Info about the specific 'parameter sections':


**x1, y1, z1, x2, y2, z2 and startWidth:**

First coordinates are for the jump entry area, it creates box with the two vectors, startWidth is the width of the starting position box, test it out until you find your number.


**x3, y3, z3, x4, y4, z4 and endWidth:**

Next part are the coordinates the landingarea, it creates box with the two vectors, endWidth is the width of the landing position box, test it out until you find your number.



**camX, camY and camZ:**

The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.

**reward**
It just gives points, I'm not really sure what type of points it gives,

**set**
By default only set 0 stunt jumps are enabled. This value can only be in the range 0 to 31. You can enable a set of stunt jumps with [`ENABLE_STUNT_JUMP_SET`](#_0xE369A5783B866016)

## Parameters
* **x1**: Entry zone bottom left corner x.
* **y1**: Entry zone bottom left corner y.
* **z1**: Entry zone bottom left corner z.
* **x2**: Entry zone top right corner x.
* **y2**: Entry zone top right corner y.
* **z2**: Entry zone top right corner z.
* **startWidth**: The width of the starting zone.
* **x3**: Landing zone start corner coordinate x.
* **y3**: Landing zone start corner coordinate y.
* **z3**: Landing zone start corner coordinate z.
* **x4**: Landing zone end corner coordinate x.
* **y4**: Landing zone end corner coordinate y.
* **z4**: Landing zone end corner coordinate z.
* **endWidth**: The width of the ending zone.
* **camX**: Stunt (cinematic) camera x position.
* **camY**: Stunt (cinematic) camera y position.
* **camZ**: Stunt (cinematic) camera z position.
* **reward**: Amount of points to give to the player, in scripts it's 150.
* **set**: Is the set to add the stunt jump to.
* **camOptional**: Wether the cinematic camera of the stunt jump is optional or not. Usually false.

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
    reward = 150,
    set = 0,
    optionalCam = false

}

local stuntjump = AddStuntJumpAngled(
    data.entry.leftbottom, 
    data.entry.righttop,
    data.entry.radius,
    data.landing.start,
    data.landing.ending,
    data.landing.radius,
    data.camcoords,
    data.reward,
    data.set,
    data.optionalCam
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