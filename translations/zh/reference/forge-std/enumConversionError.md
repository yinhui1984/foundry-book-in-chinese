## `enumConversionError`

### 签名

```solidity
stdError.enumConversionError
```

### 描述

当试图将一个数字转换为一个枚举的变体时，如果该数字大于该枚举的变体数量（从0开始计算），则 Solidity 内部会出现错误。