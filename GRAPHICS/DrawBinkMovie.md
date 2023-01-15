---
ns: GRAPHICS
---
## _DRAW_BINK_MOVIE

```c
// 0x7118E83EEB9F7238
void _DRAW_BINK_MOVIE(int binkMovie, float posX, float posY, float scaleX, float scaleY, float rotation, int r, int g, int b, int a);
```

Must be called each frame, will play at specified position on screen when called with [`_PLAY_BINK_MOVIE`](#_0x70D2CC8A542A973C)

## Parameters
* **binkMovie**: The movie to be drawn (from [`_SET_BINK_MOVIE`](#_0x338D9F609FD632DB)).
* **posX**: The centered x position of the movie (0.0 - 1.0).
* **posY**: The centered y position of the movie (0.0 - 1.0).
* **scaleX**: The x scale of the movie (0.0 - 1.0).
* **scaleY**: The y scale of the movie (0.0 - 1.0).
* **rotation**: The rotation of the movie (0.0 - 360.0).
* **r**: The red value of the movie (0 - 255).
* **g**: The green value of the movie (0 - 255).
* **b**: The blue value of the movie (0 - 255).
* **a**: The alpha value of the movie (0 - 255).

## Examples
```lua
Citizen.CreateThread(function()
    local binkint = SetBinkMovie("casino_trailer") -- BINK movie, list can be found at https://gist.github.com/ItsJunction/8046f28c29ea8ff2821e9e4f933f595f
    SetBinkMovieTime(binkint, 0.0) -- Seeks to 0%, just incase of errors.

    while (GetBinkMovieTime(binkint) < 100.0) do
        print(math.floor(GetBinkMovieTime(binkint) * 100)/100 .. "%") -- Prints current playtime (as percentage).
        PlayBinkMovie(binkint)
        DrawBinkMovie(binkint, 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255) -- This example draws and plays in fullscreen in the center (no matter the resolution).
        Citizen.Wait(0)
    end
end)
```
