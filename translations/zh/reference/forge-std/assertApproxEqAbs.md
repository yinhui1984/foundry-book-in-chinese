## `assertApproxEqAbs`

### 签名

```solidity
function assertApproxEqAbs(uint256 a, uint256 b, uint256 maxDelta) internal virtual;
```

```solidity
function assertApproxEqAbs(uint256 a, uint256 b, uint256 maxDelta, string memory err) internal virtual;
```

### 描述

断言 `a` 近似等于 `b`，delta 为百分比

### 例子

```solidity
function testFail () external {
    uint256 a = 100;
    uint256 b = 200;

    assertApproxEqAbs(a, b, 90);
}
```

```ignore
[PASS] testFail() (gas: 23169)
Logs:
  Error: a ~= b not satisfied [uint]
    Expected: 200
      Actual: 100
   Max Delta: 90
       Delta: 100
```
