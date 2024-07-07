---
ns: GRAPHICS
aliases: ["_SET_BINK_MOVIE_REQUESTED"]
---
## _SET_BINK_MOVIE

```c
// 0x338D9F609FD632DB
int _SET_BINK_MOVIE(char* name);
```

Creates an integer (usually 1) for a BINK movie to be called with other natives.
[List of all BINK movies (alphabetically ordered) as of b2802](https://gist.github.com/ItsJunction/8046f28c29ea8ff2821e9e4f933f595f)

## Parameters
* **name**: The BINK movie to play (with or without file extension).

## Examples
```lua
Citizen.CreateThread(function()
    local binkint = SetBinkMovie("casino_trailer")
    SetBinkMovieTime(binkint, 0.0) -- Seeks to 0%

    while (GetBinkMovieTime(binkint) < 100.0) do -- Very Basic Idea That Works?
        print(math.floor(GetBinkMovieTime(binkint) * 100)/100 .. "%") -- Prints current playtime (as percentage).
        PlayBinkMovie(binkint)
        DrawBinkMovie(binkint, 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255) -- This example draws and plays in Fullscreen and in the center of screen (no matter the resolution).
        Citizen.Wait(0)
    end
end)
```
