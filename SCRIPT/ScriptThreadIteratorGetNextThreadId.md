---
ns: SCRIPT
aliases: ["0x30B4FA1C82DD4B9F","_GET_ID_OF_NEXT_THREAD_IN_ENUMERATION"]
---
## SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID

```c
// 0x30B4FA1C82DD4B9F 0x1E28B28F
int SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID();
```

```
MulleDK19: Gets the ID of the next active thread.  
First call _BEGIN_ENUMERATE_THREADS (0xDADFADA5A20143A8).  
Any subsequent call to this function will then return the ID of the next active thread.  
If the function returns 0, the end of the enumeration has been reached.  
-----------------------------------------------------------------------  
Here's an example:  
	std::vector<int> vecCurrentThreads;  
	void update_current_threads_list()  
	{  
vecCurrentThreads.clear();  
_BEGIN_ENUMERATING_THREADS();  
int id = _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION();  
while (id != 0)  
{  
	id = _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION();  
	vecCurrentThreads.push_back(id);  
}  
	}  
```

## Return value
