## cast sig

### 名称

cast-sig - 获取一个函数的选择器。

### 简介

``cast sig`` [*options*] *sig*

### 描述

获取一个函数的选择器。

签名（*sig*）是一个片段，其形式为 `<function name>(<types...>)`。

### 可选

{{#include common-options.md}}

### 例子

1. 获取函数 `transfer(address,uint256)` 的选择器。
    ```sh
    cast sig "transfer(address,uint256)"
    ```

2. 调用一个预期输入 `struct` 的函数:

    ```solidity
    contract Test {
        struct MyStruct {
            address addr;
            uint256 amount;
        }
        function myfunction(MyStruct memory t) public pure {}
    }
    ```

    结构体被编码为元组 (请参阅 [struct encoding](../../misc/struct-encoding.md)).

    ```sh
    cast sig "myfunction((address,uint256))"
    ```
### 请参阅

[cast](./cast.md), [struct encoding](../../misc/struct-encoding.md)
