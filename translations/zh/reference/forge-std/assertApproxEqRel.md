## `assertApproxEqRel`

### 签名

```solidity
function assertApproxEqRel(uint256 a, uint256 b, uint256 maxPercentDelta) internal virtual;
```

```solidity
function assertApproxEqRel(uint256 a, uint256 b, uint256 maxPercentDelta, string memory err) internal virtual;
```

### 描述

断言 `a` 近似等于 `b`，delta 为百分比，其中 `1e18` 为100%。

### 例子

```solidity
function testFail () external {
    uint256 a = 100;
    uint256 b = 200;
    assertApproxEqRel(a, b, 0.4e18);
}
```

```ignore
[PASS] testFail() (gas: 23884)
Logs:
  Error: a ~= b not satisfied [uint]
      Expected: 200
        Actual: 100
   Max % Delta: 0.400000000000000000
       % Delta: 0.500000000000000000
```
