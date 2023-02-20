## `rewind`

### 签名

```solidity
function rewind(uint256 time) public;
```

### 描述

将 `block.timestamp` `重新调整为指定的秒数。

### 例子

```solidity
assertEq(block.timestamp, 3600);
rewind(3600);
assertEq(block.timestamp, 0);
```
