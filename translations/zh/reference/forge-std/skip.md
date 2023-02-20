## `skip`

### 签名

```solidity
function skip(uint256 time) public;
```

### 描述

将 `block.timestamp` 向前跳过指定的秒数。

### 例子

```solidity
assertEq(block.timestamp, 0);
skip(3600);
assertEq(block.timestamp, 3600);
```
