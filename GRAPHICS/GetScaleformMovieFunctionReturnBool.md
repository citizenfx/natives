---
ns: GRAPHICS
aliases: ["0x768FF8961BA904D6", "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_BOOL"]
---
## IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY

```c
// 0x768FF8961BA904D6 0x5CD7C3C0
BOOL IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(int method_return);
```

```
Seems to take data that is returned from "_POP_SCALEFORM_MOVIE_FUNCTION" and checks to see if it's not null/empty.  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::_PUSH_SCALEFORM_MOVIE_FUNCTION(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_POP_SCALEFORM_MOVIE_FUNCTION();  
}  
if (GRAPHICS::_0x768FF8961BA904D6(l_45)) {  
    v_13 = GRAPHICS::_0x2DE7EFA66B906036(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```

## Parameters
* **method_return**: 

## Return value
