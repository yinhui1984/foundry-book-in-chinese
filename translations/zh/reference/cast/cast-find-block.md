## cast find-block

### 名称

cast-find-block - 获取与提供的时间戳最接近的区块编号。

### 简介

``cast find-block`` [*options*] *timestamp*

### 描述

获取与提供的时间戳最接近的区块编号。

### 可选

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取最接近 2021 年新年的区块编号：
    ```sh
    cast find-block 1609459200
    ```

### 请参阅

[cast](./cast.md)
