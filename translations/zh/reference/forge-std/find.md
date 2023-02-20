## `find`

### 签名

```solidity
function find(StdStorage storage self) internal returns (uint256);
```

### 描述

在给定的 [`target`](.../forge-std/target.md)、[`sig`](.../forge-std/sig.md)、[`with_key`](.../forge-std/with_key.md)(s) 和 [`depth`](.../forge-std/depth.md) 中找到一个任意的储存槽。

如果不成功，则 Reverts，并提供一个信息。
