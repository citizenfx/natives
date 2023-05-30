---
ns: PLAYER
---
## RESTORE_PLAYER_STAMINA

```c
// 0xA352C1B864CAFD33 0x62A93608
void RESTORE_PLAYER_STAMINA(Player player, float p1);
```
```
p1 could be regeneration speed or amount?

Mentioned once in triathlonsp.c4 line ~60019
sub_5a268 gets used a few times in the function above it, line ~59981

void sub_5a268(auto a_0) {
    if (a_0) {
        if (l_2F1 < (l_2F1._f1 / 2)) {
            PLAYER::RESTORE_PLAYER_STAMINA(PLAYER::PLAYER_ID(), 0.33);
        } else { }
    } else { 
        l_2F1 = l_2F1._f1;
    }
}
```

## Parameters
* **player**: 
* **p1**: 

