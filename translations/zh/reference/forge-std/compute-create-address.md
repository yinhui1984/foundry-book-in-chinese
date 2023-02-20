## `computeCreateAddress`

### 签名

```solidity
function computeCreateAddress(address deployer, uint256 nonce) internal pure returns (address)
```

### 描述

对于给定的部署者地址和 nonce，计算合约将被部署到的地址。对预先计算合约 **将** 被部署的地址很有用。

### 例子

```solidity
address governanceAddress = computeCreateAddress(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266, 1);

// this contract requires a governance contract which hasn't been deployed yet
Contract contract = new Contract(governanceAddress);
// now we deploy it
Governance governance = new Governance(contract);

// assuming `contract` has a `governance()` accessor
assertEq(governanceAddress, address(governance)); // [PASS]
```
