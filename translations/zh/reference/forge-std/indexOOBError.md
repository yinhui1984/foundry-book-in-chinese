## `indexOOBError`

### 签名

```solidity
stdError.indexOOBError
```

### 描述

当试图访问一个超出边界的数组元素时，Solidity 内部的错误。

对于外部合约中的空数组将不起作用。对于这种情况，请使用不需要任何参数的 `expectRevert`。