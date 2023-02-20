## `noGasMetering`

### 签名

```solidity
modifier noGasMetering();
```

### 描述

一个函数修改器，在函数的生命周期内关闭 Gas 计量。

注意，调用作弊代码需要一些 Gas，所以在使用这个修改器时，你会看到一些 Gas 的使用（尽管很小）。

### 例子

```solidity
function addInLoop() internal returns (uint256) {
    uint256 b;
    for (uint256 i; i < 10000; i++) {
        b + i;
    }
    return b;
}

function addInLoopNoGas() internal noGasMetering returns (uint256) {
    return addInLoop();
}

function testFunc() external {
  uint256 gas_start = gasleft();
  addInLoop();
  uint256 gas_used = gas_start - gasleft();

  uint256 gas_start_no_metering = gasleft();
  addInLoopNoGas();
  uint256 gas_used_no_metering = gas_start_no_metering - gasleft();

  emit log_named_uint("Gas Metering", gas_used);
  emit log_named_uint("No Gas Metering", gas_used_no_metering);
}
```

```ignore
[PASS] testFunc() (gas: 1887191)
Logs:
  Gas Metering: 1880082
  No Gas Metering: 3024
```
