## `deriveRememberKey`

### 签名

```solidity
function deriveRememberKey(string memory mnemonic, uint32 index) internal returns (address who, uint256 privateKey)
```

### 描述

从助记符中导出私钥，同时将其存储在 forge 的本地钱包中。返回地址和私钥。

### 例子

从路径 `m/44'/60'/0'/0/0` 的测试助记符中获取私钥和地址。用它们来签署一些数据并开始广播交易。

```solidity
string memory mnemonic = "test test test test test test test test test test test junk";

(address deployer, uint256 privateKey) = deriveRememberKey(mnemonic, 0);

bytes32 hash = keccak256("Signed by deployer");
(uint8 v, bytes32 r, bytes32 s) = vm.sign(privateKey, hash);

vm.startBroadcast(deployer);
...
vm.stopBroadcast();
```

从路径 `m/44'/60'/0'/0/0` 的测试助记符中获取一个地址，开始广播交易。

```solidity
string memory mnemonic = "test test test test test test test test test test test junk";

(address deployer, ) = deriveRememberKey(mnemonic, 0);

vm.startBroadcast(deployer);
...
vm.stopBroadcast();
```

### 另请参阅

作弊码：
- [deriveKey](../../cheatcodes/derive-key.md)
- [rememberKey](../../cheatcodes/remember-key.md)
