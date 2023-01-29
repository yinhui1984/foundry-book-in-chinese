## cast lookup-address

### 名称

cast-lookup-address - 进行 ENS 反向查询。

### 简介

``cast lookup-address`` [*options*] *who*

### 描述

进行 ENS 反向查询。

如果输入 `--verify`，那么在反向查找之后，将进行正常的查找，以验证地址是否正确。

### 可选

#### 查找选项

`-v`  
`--verify`  
&nbsp;&nbsp;&nbsp;&nbsp;进行正常查询，以验证地址是否正确。

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取一个地址的 ENS 名称。
    ```sh
    cast lookup-address $ADDRESS
    ```

2. 同时进行反向查询和正常查询：
    ```sh
    cast lookup-address --verify $ADDRESS
    ```

### 请参阅

[cast](./cast.md), [cast resolve-name](./cast-resolve-name.md)
