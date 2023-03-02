## `startPrank`

### Signature

```solidity
function startPrank(address) external;
```

```solidity
function startPrank(address sender, address origin) external;
```

### Description



**为<u>所有后续调用</u>**设置`msg.sender`，直到调用[`stopPrank`](./stop-prank.md)。

第二个`startPrank`的签名  会将`tx.origin `也在所有后续调用中被设置。

### 示例

```solidity
address richMan = 0x218B95BE3ed99141b0144Dba6cE88807c4AD7C09;
address me = address(this);
//将msg.sender更换为richMan
vm.startPrank(richMan);
//richMan给我们转账
myToken.transfer(me, 5 * (10**myToken.decimals())); 
//重置msg.sender为之前的值
vm.stopPrank();
```



### SEE ALSO

Forge Standard Library

[`startHoax`](../reference/forge-std/startHoax.md), [`changePrank`](../reference/forge-std/change-prank.md)





