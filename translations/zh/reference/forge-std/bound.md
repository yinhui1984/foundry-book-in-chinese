## `bound`

### 签名

```solidity
function bound(uint256 x, uint256 min, uint256 max) public returns (uint256 result);
```

### 描述

一个数学函数，用于将模糊测试的输入包裹在一定范围内。

你可以用它代替 `assume` 作弊代码，在某些情况下获得更好的性能。阅读更多 [此处](../../cheatcodes/assume.md)。

### 例子

```solidity
input = bound(input, 99, 101);
```

Returns `99` for input `0`.
<br>
Returns `100` for input `1`.
<br>
Returns `101` for input `2`.
<br>
Returns `99` for input `3`.
<br>
And so on.