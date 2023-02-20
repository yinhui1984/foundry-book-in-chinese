## `makeAddr`

### 签名

```solidity
function makeAddr(string memory name) internal returns(address addr);
```

### 描述

创建一个由所提供的 `name` 衍生的地址。

一个 [`label`](.../.../cheatcodes/label.md) 被创建为派生地址，所提供的 `name` 被作为标签值使用。

### 例子

```solidity
address alice = makeAddr("alice");
emit log_address(alice); // 0x328809bc894f92807417d2dad6b7c998c1afdac6
```
