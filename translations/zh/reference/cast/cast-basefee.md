## cast basefee

### 名称

cast-basefee - 获取一个区块的基础费用。

### 简介

``cast basefee`` [*options*] *block*

### 描述

获取一个区块的基础费用。

### 可选

#### 查询选项

`-B` *block*  
`--block` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;你想查询的区块高度。

&nbsp;&nbsp;&nbsp;&nbsp;可以是一个区块编号，或任何一个标签:  `earliest`, `latest` 或者 `pending`。

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取最新区块的基础费用：
    ```sh
    cast basefee latest
    ```

2. 获取创世区块的基础费用：
    ```sh
    cast basefee 1
    ```

### 请参阅

[cast](./cast.md), [cast block](./cast-block.md), [cast age](./cast-age.md)
