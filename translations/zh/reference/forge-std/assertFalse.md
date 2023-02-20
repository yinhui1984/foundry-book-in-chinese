## `assertFalse`

### 签名

```solidity
function assertFalse(bool data) internal virtual;
```

```solidity
function assertFalse(bool data, string memory err) internal virtual;
```

### 描述

断言 `条件` 为假。

### 例子

```solidity
bool failure = contract.fun();
assertFalse(failure);
```