## cast block

### 名称

cast-block - 获取一个区块的信息。

### 简介

``cast block`` [*options*] `--block` *block*

### 描述

获取一个区块的信息。

如果指定了 *field*，那么就只显示该区块的指定字段。

### 可选

#### 查询选项

`-B` *block*  
`--block` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;你想查询的区块高度。

&nbsp;&nbsp;&nbsp;&nbsp;可以是一个区块编号，或任何一个标签:  `earliest`, `latest` 或者 `pending`.

`-f` *field*  
`--field` *field*  
&nbsp;&nbsp;&nbsp;&nbsp;如果指定，只获取区块的给定字段。

{{#include ../common/display-options.md}}

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取最新区块:
    ```sh
    cast block --block latest
    ```

2. 获取最新区块的哈希:
    ```sh
    cast block --block latest --field hash
    ```

### 请参阅

[cast](./cast.md), [cast basefee](./cast-basefee.md), [cast age](./cast-age.md)
