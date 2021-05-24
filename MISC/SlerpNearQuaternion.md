---
ns: MISC
aliases: ["0xF2F6A2FA49278625"]
---
## SLERP_NEAR_QUATERNION

```c
// 0xF2F6A2FA49278625 0x87B92190
void SLERP_NEAR_QUATERNION(float t, float x, float y, float z, float w, float x1, float y1, float z1, float w1, float* outX, float* outY, float* outZ, float* outW);
```

This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12

## Parameters
* **t**: acceleration differenzial (am_rollercoaster.c func_134)
* **x**: rotation parameter (maybe X axys)
* **y**: rotation parameter (maybe X axys)
* **z**: rotation parameter (maybe X axys)
* **w**: rotation parameter (maybe X axys)
* **x1**: rotation parameter (maybe Y axys)
* **y1**: rotation parameter (maybe Y axys)
* **z1**: rotation parameter (maybe Y axys)
* **w1**: rotation parameter (maybe Y axys)
* **outX**: output value calculated (X)
* **outY**: output value calculated (Y)
* **outZ**: output value calculated (Z)
* **outW**: output value calculated (W)

## Examples
```cs
// Example from am_rollercoaster.c
// where func_136 calculates arctan of given values and func_135 calculates both sin and cos

void func_134(int iParam0, int iParam1, float fParam2) cippalippo
{
	int iVar0;
	int iVar1;
	int iVar2;
	int iVar3;
	float fVar4;
	var uVar5[4];
	var uVar6[4];
	var uVar7[4];
	float fVar8;
	
	iVar0 = func_47(iParam1);
	iVar1 = iParam1;
	iVar2 = func_48(iParam1);
	iVar3 = func_48(iVar2);
	if (fParam2 < 0f)
	{
		fParam2 = (fParam2 + Local_1417[(iLocal_714 - 1) /*5*/].f_3);
	}
	fVar8 = ((fParam2 - Local_1417[iVar1 /*5*/].f_3) / (Local_1417[iVar2 /*5*/].f_3 - Local_1417[iVar1 /*5*/].f_3));
	if (fVar8 < 0.5f)
	{
		fVar4 = (fVar8 + 0.5f);
		func_135(func_136(iVar0, iVar1), &(uVar5[0]), &(uVar5[1]), &(uVar5[2]), &(uVar5[3]));
		func_135(func_136(iVar1, iVar2), &(uVar6[0]), &(uVar6[1]), &(uVar6[2]), &(uVar6[3]));
	}
	else
	{
		fVar4 = (fVar8 - 0.5f);
		func_135(func_136(iVar1, iVar2), &(uVar5[0]), &(uVar5[1]), &(uVar5[2]), &(uVar5[3]));
		func_135(func_136(iVar2, iVar3), &(uVar6[0]), &(uVar6[1]), &(uVar6[2]), &(uVar6[3]));
	}
	MISC::_0xF2F6A2FA49278625(fVar4, uVar5[0], uVar5[1], uVar5[2], uVar5[3], uVar6[0], uVar6[1], uVar6[2], uVar6[3], &(uVar7[0]), &(uVar7[1]), &(uVar7[2]), &(uVar7[3]));
	ENTITY::SET_ENTITY_QUATERNION(iLocal_719[iParam0], uVar7[0], uVar7[1], uVar7[2], uVar7[3]);
}

```
