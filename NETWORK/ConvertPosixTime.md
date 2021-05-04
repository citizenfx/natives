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
```lua
In Lua, this wont work, since it returns C# struct, these are functions that you can use to get time as os.date server-side is returning:
local function GetIntFromBlob(b, s, o)
	r = 0
	for i=1,s,1 do
		r = r | (string.byte(b,o+i)<<(i-1)*8)
	end
	return r
end
function UnixDate(epoch)
	blob = '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'
	retval = Citizen.InvokeNative(0xAC97AF97FA68E5D5, epoch, blob, Citizen.ReturnResultAnyway())
	year = GetIntFromBlob(blob,8,0)
	month = GetIntFromBlob(blob,8,8)
	day = GetIntFromBlob(blob,8,16)
	hour = GetIntFromBlob(blob,8,24)
	minute = GetIntFromBlob(blob,8,32)
	second = GetIntFromBlob(blob,8,40)
	return string.format("%s-%s-%s %s:%s:%s", year,month,day,hour,minute,second)
end
-- Source: http://www.kronzky.info/fivemwiki/index.php?title=GetDateAndTimeFromUnixEpoch with a bit of editing
```

## Parameters
* **posixTime**: 
* **timeStructure**: 

