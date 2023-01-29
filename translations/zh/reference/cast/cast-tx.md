## cast tx

### 名称

cast-tx - 获得有关交易的信息。

### 简介

``cast tx`` [*options*] *tx_hash* [*field*]

### 描述

获得有关交易的信息。

如果指定了 *field*，那么就只显示交易的指定字段。

### 可选

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include ../common/display-options.md}}

{{#include common-options.md}}

### 例子

1. 获得有关交易的信息：
    ```sh
    cast tx $TX_HASH
    ```

2. 获取交易的发起人:
    ```sh
    cast tx $TX_HASH from
    ```

### 请参阅

[cast](./cast.md), [cast receipt](./cast-receipt.md)
