## cast --parse-bytes32-string

### 名称

cast---parse-bytes32-string - 从 bytes32 编码中解析出一个字符串。

### 简介

``cast --parse-bytes32-string`` [*options*] *bytes*

### 描述

通过将 bytes 解释为 ASCII 字符，将 [Solidity string literal](https://docs.soliditylang.org/en/v0.8.16/types.html#string-literals-and-types) 从其 bytes32 编码表示中解析出来。 这个命令撤销了 [--format-bytes32-string](./cast--format-bytes32-string.md) 中的编码。

### 可选

{{#include common-options.md}}

### 例子

1. 将字符串 "hello" 的 bytes32 编码解析为字符串：
    ```sh
    cast --parse-bytes32-string "0x68656c6c6f000000000000000000000000000000000000000000000000000000"
    ```

### 请参阅

[cast](./cast.md)
