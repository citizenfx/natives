---
ns: SCRIPT
aliases: ["_GET_NUMBER_OF_INSTANCES_OF_STREAMED_SCRIPT","_GET_NUMBER_OF_INSTANCES_OF_SCRIPT_WITH_NAME_HASH"]
---
## _GET_NUMBER_OF_REFERENCES_OF_SCRIPT_WITH_NAME_HASH

```c
// 0x2C83A9DA6BFFC4F9 0x029D3841
int _GET_NUMBER_OF_REFERENCES_OF_SCRIPT_WITH_NAME_HASH(Hash scriptHash);
```

```
Gets the number of instances of the specified script is currently running.
Actually returns numRefs - 1.
if (program)
	v3 = rage::scrProgram::GetNumRefs(program) - 1;
return v3;
```

## Parameters
* **scriptHash**: 

## Return value
