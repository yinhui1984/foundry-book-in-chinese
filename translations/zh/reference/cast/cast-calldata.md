## cast calldata

### 名称

cast-calldata - ABI 编码一个带参数的函数。

### 简介

``cast calldata`` [*options*] *sig* [*args...*]

### 描述

ABI 编码一个带参数的函数。

签名 (*sig*) 是一个片段，其形式为 `<function name>(<types...>)`.

### 可选

{{#include common-options.md}}

### 例子

1. 对调用 `someFunc(address,uint256)` 的参数进行ABI编码：
    ```sh
    cast calldata "someFunc(address,uint256)" 0x... 1
    ```

### 请参阅

[cast](./cast.md), [cast abi-encode](./cast-abi-encode.md)
