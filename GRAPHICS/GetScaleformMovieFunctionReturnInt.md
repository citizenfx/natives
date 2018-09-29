---
ns: GRAPHICS
aliases: ["0x2DE7EFA66B906036"]
---
## _GET_SCALEFORM_MOVIE_FUNCTION_RETURN_INT

```c
// 0x2DE7EFA66B906036 0x2CFB0E6D
int _GET_SCALEFORM_MOVIE_FUNCTION_RETURN_INT(int method_return);
```

```
Needs a bit more research, but it seems to return an int.  
Testing with the scaleform "HACKING_PC" it seems to return an int depending on the clicked App/Program ID  
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
