## cast age

### 名称

cast-age - 获取一个区块的时间戳。

### 简介

``cast age`` [*options*]

### 描述

获取一个区块的时间戳。

### 可选

#### 查询选项

`-B` *block*  
`--block` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;你想查询的区块高度。

&nbsp;&nbsp;&nbsp;&nbsp;可以是一个区块编号，或任何一个标签: `earliest`, `latest` 或者 `pending`。

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取最新区块的时间戳：
    ```sh
    cast age latest
    ```

2. 获取创世区块的时间戳：
    ```sh
    cast age 1
    ```

### 请参阅

[cast](./cast.md), [cast block](./cast-block.md), [cast basefee](./cast-basefee.md)
