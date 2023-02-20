## `makeAddrAndKey`

### 签名

```solidity
function makeAddrAndKey(string memory name) internal returns(address addr, uint256 privateKey);
```

### 描述

创建一个由提供的 `name` 衍生的地址和私钥。

一个 [`label`](.../.../cheatcodes/label.md) 被创建为派生地址，所提供的 `name` 被作为标签值使用。

### 例子

```solidity
(address alice, uint256 key) = makeAddrAndKey("alice");
emit log_address(alice); // 0x328809bc894f92807417d2dad6b7c998c1afdac6
emit log_uint(key); // 70564938991660933374592024341600875602376452319261984317470407481576058979585
```
