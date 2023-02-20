## `read`

### 签名

```solidity
function read_bytes32(StdStorage storage self) internal returns (bytes32);
```

```solidity
function read_bool(StdStorage storage self) internal returns (bool);
```

```solidity
function read_address(StdStorage storage self) internal returns (address);
```

```solidity
function read_uint(StdStorage storage self) internal returns (uint256);
```

```solidity
function read_int(StdStorage storage self) internal returns (int256);
```

### 描述

从存储槽中读取 `bytes32`，`bool`，`address`，`uint256`，或`int256` 的值。

如果不成功，则 Reverts，并提供一个信息。
