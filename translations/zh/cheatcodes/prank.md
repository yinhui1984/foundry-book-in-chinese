## `prank`

### Signature

```solidity
function prank(address) external;
```

```solidity
function prank(address sender, address origin) external;
```

### Description



<u>**对下一次调用**</u>将`msg.sender`设置为指定的地址。"下一次调用 "也包括静态调用，但不包括对作弊代码地址的调用。

第二个`prank`的签名  会将`tx.origin `也在所有后续调用中被设置。



> 译者注:
>
> `prank`是对下一次调用生效, `startPrank`是对所有后续调用生效知道调用`stopPrank`
>
> 类似的还有`broadcast` , `startBroadcast` , `stopBroadcast`

### Examples

```solidity
/// function withdraw() public {
///     require(msg.sender == owner);

vm.prank(owner);
myContract.withdraw(); // [PASS]
```

### SEE ALSO

Forge Standard Library

[`hoax`](../reference/forge-std/hoax.md)