---
ns: GRAPHICS
aliases: ["0x768FF8961BA904D6", "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_BOOL"]
---
## IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY

```c
// 0x768FF8961BA904D6 0x5CD7C3C0
BOOL IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(int method_return);
```

methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).

## Parameters
* **method_return**: The return value of this native: `EndScaleformMovieMethodReturn`

## Return value
Returns true if the return value of a scaleform function is ready to be collected
