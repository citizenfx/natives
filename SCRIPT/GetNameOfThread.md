---
ns: SCRIPT
aliases: ["_GET_THREAD_NAME"]
---
## _GET_NAME_OF_THREAD

```c
// 0x05A42BA9FC8DA96B 0xBE7ACD89
char* _GET_NAME_OF_THREAD(int threadId);
```

```
The reversed code looks like this (Sasuke78200)  
//  
char g_szScriptName[64];  
char* _0xBE7ACD89(int a_iThreadID)  
{  
	scrThread* l_pThread;  
	// Get the script thread  
	l_pThread = GetThreadByID(a_iThreadID);	  
	if(l_pThread == 0 || l_pThread->m_iThreadState == 2)  
	{  
strncpy(g_szScriptName, "", 64);  
	}  
	else  
	{  
strncpy(g_szScriptName, l_pThread->m_szScriptName, 64);  
	}	  
	return g_szScriptName;  
}  
```

## Parameters
* **threadId**: 

## Return value
