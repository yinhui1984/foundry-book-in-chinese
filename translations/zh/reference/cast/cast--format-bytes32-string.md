## cast --format-bytes32-string

### 名称

cast---format-bytes32-string - 将一个字符串转换成 bytes32 编码。

### 简介

``cast --format-bytes32-string`` [*options*] *string*

### 描述

将一个字符串转换成bytes32编码。

请注意，此命令仅用于将 [Solidity string literal](https://docs.soliditylang.org/en/v0.8.16/types.html#string-literals-and-types) 格式化为 `bytes32`。如果你想填充一个字节字符串，请使用 [-to-bytes32](./cast--to-bytes32.md) 代替。

### 可选

{{#include common-options.md}}

### 例子

1. 将 "hello" 字符串转换成 bytes32 编码：
    ```sh
    cast --format-bytes32-string "hello"
    ```

### 请参阅

[cast](./cast.md)
