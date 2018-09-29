---
ns: NETWORK
---
## NETWORK_HANDLE_FROM_PLAYER

```c
// 0x388EB2B86C73B6B3 0xD3498917
void NETWORK_HANDLE_FROM_PLAYER(Player player, int* networkHandle, int bufferSize);
```

```
Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
* Currently unknown struct  
Example:  
std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
    const int size = 13;  
    uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
    NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
    for (int i = 0; i < size; i++) {  
        Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
    }  
    std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
    return result;  
}  
```

## Parameters
* **player**: 
* **networkHandle**: 
* **bufferSize**: 

