---
ns: DATAFILE
aliases: ["0x83BCCE3224735F05"]
---
## DATAFILE_START_SAVE_TO_CLOUD

```c
// 0x83BCCE3224735F05 0x768CBB35
BOOL DATAFILE_START_SAVE_TO_CLOUD(char* filename);
```

```
Saves a JSON file? It might even be saving it to the Rockstar Cloud, but I have no way of verifying this  
"shrinkletter.c4", line ~378:  
DATAFILE::DATAFILE_CREATE();  
v_5 = DATAFILE::_GET_ROOT_OBJECT();  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "in", a_2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "st", &a_2._f1);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "mp", &a_2._f2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "ms", &a_2._f3);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sc", &a_2._f5);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "pr", &a_2._f6);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fa", &a_2._f7);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sm", &a_2._f8);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "kp", &a_2._f9);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sv", &a_2._fA);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "yo", &a_2._fB);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fi", &a_2._fC);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "rc", &a_2._fD);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "co", &a_2._fE);  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "su", a_2._fF);  
DATAFILE::_83BCCE3224735F05("gta5/psych/index.json"); // saves the file?  
```

## Parameters
* **filename**: 

## Return value
