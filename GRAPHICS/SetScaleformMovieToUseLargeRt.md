---
ns: GRAPHICS
aliases: ["0x32F34FF7F617643B"]
---
## SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT

```c
// 0x32F34FF7F617643B
void SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT(int scaleformMovieId, cs_type(Any) BOOL useLargeRT);
```

```
NativeDB Introduced: v573
```

Configures a Scaleform movie to render to a large render target (1280x720), which is useful for ensuring higher quality and clarity in certain display scenarios. Such as displaying the name of an organization (CEO Office) in a visually impactful way for example.

## Parameters
* **scaleformMovieId**: The handle of the Scaleform to be used.
* **useLargeRT**: A boolean switch to enable/disable the use of the large rendertarget.