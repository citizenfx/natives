---
ns: PED
---
## CLEAR_RELATIONSHIP_BETWEEN_GROUPS

```c
// 0x5E29243FB56FC6D4 0x994B8C2D
void CLEAR_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2);
```

```
Clears the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
(Credits: Inco)  
Example:  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
```

## Parameters
* **relationship**: 
* **group1**: 
* **group2**: 

