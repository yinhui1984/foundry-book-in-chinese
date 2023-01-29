## cast storage

### 名称

cast-storage - 获取一个合约的存储槽的原始值。

### 简介

``cast storage`` [*options*] *address* *slot*

### 描述

获取一个合约的存储槽的原始值。 (大于 18446744073709551615(u64::MAX) 的槽位应以十六进制给出。使用`cast index` 来计算映射槽。)

地址（*address*）可以是 ENS 名称或地址。

### 可选

#### 查询选项

`-B` *block*  
`--block` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;你想查询的区块高度。

&nbsp;&nbsp;&nbsp;&nbsp;可以是一个区块编号，或任何一个标签：`earliest`, `latest` 或者 `pending`.

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 获取 WETH 合约上 0 号槽的值。
    ```sh
    cast storage 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2 0
    ```

### 请参阅

[cast](./cast.md), [cast proof](./cast-proof.md)
