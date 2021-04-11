---
ns: NETWORK
aliases: ["0xABD5E88B8A2D3DB2","_NETWORK_VOICE_CONNECT_TO_PLAYER"]
---
## NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER

```c
// 0xABD5E88B8A2D3DB2 0x9DFD89E6
void NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER(Any* globalPtr);
```

```
Only one occurence in the scripts:
auto sub_cb43(auto a_0, auto a_1) {
    if (g_2594CB._f1) {
        if (NETWORK::_855BC38818F6F684()) {
            NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
            g_2594CB._f14/*{13}*/ = a_0._fB93;
            g_2594CB._f4/*"64"*/ = a_1;
            return 1;
        }
    }
    return 0;
}
other:
looks like it passes a player in the paramater
Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
```

## Parameters
* **globalPtr**: 

