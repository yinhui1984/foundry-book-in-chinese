## cast --to-bytes32

### 名称

cast---to-bytes32 - 右移十六进制数据至 32 字节。

### 简介

``cast --to-bytes32`` [*options*] *bytes*

### 描述

右移十六进制数据至 32 字节。

注意，这个命令只用于填充一个字节字符串。如果你想把 [Solidity string literal](https://docs.soliditylang.org/en/v0.8.16/types.html#string-literals-and-types) 格式化为`bytes32`，请使用 [--format-bytes32-string](./cast--format-bytes32-string.md) 来代替。

### 可选

{{#include common-options.md}}

### 请参阅

[cast](./cast.md)
