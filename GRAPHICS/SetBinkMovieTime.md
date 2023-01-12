---
ns: GRAPHICS
aliases: ["_SET_BINK_MOVIE_PROGRESS"]
---
## _SET_BINK_MOVIE_TIME

```c
// 0x0CB6B3446855B57A
void _SET_BINK_MOVIE_TIME(int binkMovie, float progress);
```

Seeks a BINK movie to a specified position.

## Parameters
* **binkMovie**: The movie that is being played.
* **progress**: As a percentage (0.0 - 100.0).

## Examples
```lua
-- Movie drawn prior
SetBinkMovieTime(1, 50.0) -- Seeks to 50% in.
```