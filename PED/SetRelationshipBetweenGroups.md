---
ns: PED
---
## SET_RELATIONSHIP_BETWEEN_GROUPS

```c
// 0xBF25EB89375A37AD 0xD4A215BA
void SET_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2);
```

```
Sets the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
Example:  
PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
```

## Parameters
* **relationship**: 
* **group1**: 
* **group2**: 

