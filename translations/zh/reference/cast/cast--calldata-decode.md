## cast --calldata-decode

### 名称

cast---calldata-decode - 解码 ABI 编码的输入数据。

### 简介

``cast --calldata-decode`` [*可选*] *sig* *calldata*

### 描述

解码 ABI 编码的输入数据.

签名 (*sig*) 是一个片段，其形式为 `<函数名>(<类型...>)`.

### 可选

{{#include common-options.md}}

### 例子

1. Decode input data for a `transfer` call:
    ```sh
    cast --calldata-decode "transfer(address,uint256)" \
      0xa9059cbb000000000000000000000000e78388b4ce79068e89bf8aa7f218ef6b9ab0e9d0000000000000000000000000000000000000000000000000008a8e4b1a3d8000
    ```

### 请参阅

[cast](./cast.md), [cast --abi-decode](./cast--abi-decode.md)
