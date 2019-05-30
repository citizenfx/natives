---
ns: GRAPHICS
aliases: ["0x2DE7EFA66B906036", "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_INT"]
---
## GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT

```c
// 0x2DE7EFA66B906036 0x2CFB0E6D
int GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(int method_return);
```

Used to get a return value from a scaleform function.
Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.


Old description:
```
Needs a bit more research, but it seems to return an int.  
Testing with the scaleform "HACKING_PC" it seems to return an int depending on the clicked App/Program ID  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
}  
if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
    v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```

## Parameters
* **method_return**: The return value of this native: `EndScaleformMovieMethodReturn`

## Return value
Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.
