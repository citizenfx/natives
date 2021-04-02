---
ns: NETWORK
aliases: ["_GET_DATE_AND_TIME_FROM_UNIX_EPOCH"]
---
## CONVERT_POSIX_TIME

```c
// 0xAC97AF97FA68E5D5 0xBB7CCE49
void CONVERT_POSIX_TIME(int posixTime, Any* timeStructure);
```

```
Takes the specified time and writes it to the structure specified in the second argument.  
struct date_time  
{ 
    alignas(8) int year;  
    alignas(8) int month;  
    alignas(8) int day;  
    alignas(8) int hour;  
    alignas(8) int minute;  
    alignas(8) int second;  
};
```

## Parameters
* **posixTime**: 
* **timeStructure**: 

