---
ns: DATAFILE
aliases: ["0xBEDB96A7584AA8CF"]
---
## DATAFILE_IS_SAVE_PENDING

```c
// 0xBEDB96A7584AA8CF 0x5DCD0796
BOOL DATAFILE_IS_SAVE_PENDING();
```

```
Example:  
if (!DATAFILE::_BEDB96A7584AA8CF())  
{  
    if (!g_109E3)  
	{  
        if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
{  
            if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
	{  
                g_17A8B = 0;  
            }  
            if (!g_D52C)  
	{  
                sub_730();  
            }  
        }  
    }  
}  
```

## Return value
