## cast abi-encode

### 名称

cast-abi-encode - 对给定的函数参数进行 ABI 编码，不包括选择器。

### 简介

``cast abi-encode`` [*options*] *sig* [*args...*]

### 描述

对给定的函数参数进行 ABI 编码，不包括选择器。

签名（*sig*）是一个片段，形式为 `<function name>(<types...>)`。

### 可选

{{#include common-options.md}}

### 例子

1. 对调用的参数进行 ABI 编码 `someFunc(address,uint256)`:
    ```sh
    cast abi-encode "someFunc(address,uint256)" 0x... 1
    ```

2. 用于对带有组件的类型进行编码（作为元组，或自定义结构）。

    ```sh
    cast abi-encode "someFunc((string,uint256))" "(myString,1)"
    ```

### 请参阅

[cast](./cast.md), [cast calldata](./cast-calldata.md)
