---
ns: GRAPHICS
aliases: ["_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS"]
---
## CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING

```c
// 0xEF662D8D57E290B1 0x6EAF56DE
void CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING(int scaleform, char* methodName, float floatParam1, float floatParam2, float floatParam3, float floatParam4, float floatParam5, char* stringParam1, char* stringParam2, char* stringParam3, char* stringParam4, char* stringParam5);
```

```
Calls the Scaleform function and passes both float and string parameters (in their respective order).  
The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
Examples:  
// function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
```

## Parameters
* **scaleform**: 
* **methodName**: 
* **floatParam1**: 
* **floatParam2**: 
* **floatParam3**: 
* **floatParam4**: 
* **floatParam5**: 
* **stringParam1**: 
* **stringParam2**: 
* **stringParam3**: 
* **stringParam4**: 
* **stringParam5**: 

