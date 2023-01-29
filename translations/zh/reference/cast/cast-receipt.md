## cast receipt

### 名称

cast-receipt - 获取一个交易的交易收据。

### 简介

``cast receipt`` [*options*] *tx_hash* [*field*]

### 描述

获取一个交易的交易收据。

如果指定了 *field*，那么就只显示收据的指定字段。

### 可选

#### Receipt 选项

`--async`  
`--cast-async`  
&nbsp;&nbsp;&nbsp;&nbsp;如果交易收据还不存在，就不要等它了。  
&nbsp;&nbsp;&nbsp;&nbsp;环境: `CAST_ASYNC`

`-c` *confirmations*  
`--confirmations` *confirmations*  
&nbsp;&nbsp;&nbsp;&nbsp;在退出前等待一定数量的交易确认。默认值：`1`。

#### RPC Options

{{#include ../common/rpc-url-option.md}}

{{#include ../common/display-options.md}}

{{#include common-options.md}}

### 例子

1. 获取交易收据：
    ```sh
    cast receipt $TX_HASH
    ```

2. 获取该交易所包含的区块编号：
    ```sh
    cast receipt $TX_HASH blockNumber
    ```

### 请参阅

[cast](./cast.md), [cast call](./cast-call.md), [cast send](./cast-send.md), [cast publish](./cast-publish.md)
