---
ns: GRAPHICS
---
## _DRAW_BINK_MOVIE

```c
// 0x7118E83EEB9F7238
void _DRAW_BINK_MOVIE(int binkMovie, float posx, float posy, float scalex, float scaley, float rotation, int r, int g, int b, int a);
```

Must be called each frame, will play at specified position on screen when called with _PLAY_BINK_MOVIE

## Parameters
* **binkMovie**: The movie that is being played.
* **posX**: The centered x position of the movie.
* **posY**: The centered y position of the movie.
* **scaleX**: The x scale of the movie.
* **scaleY**: The y scale of the movie.
* **rotation**: The rotation of the movie.
* **r**: The red value of the movie (0.0 - 255.0).
* **g**: The green value of the movie (0.0 - 255.0).
* **b**: The blue value of the movie (0.0 - 255.0).
* **a**: The alpha value of the movie (0.0 - 255.0).

## Examples
```lua
Citizen.CreateThread(function()
    local binkint = SetBinkMovie("casino_trailer") -- BINK movie, can be found in 
    SetBinkMovieTime(binkint, 0.0) -- Seeks to 0%, just incase of errors.

    while (GetBinkMovieTime(binkint) < 100.0) do
        print(math.floor(GetBinkMovieTime(binkint) * 100)/100 .. "%") -- Prints current playtime (as percentage).
        PlayBinkMovie(binkint)
        DrawBinkMovie(binkint, 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255) -- This example draws and plays in fullscreen in the center (no matter the resolution).
        Citizen.Wait(0)
    end
end)
```
