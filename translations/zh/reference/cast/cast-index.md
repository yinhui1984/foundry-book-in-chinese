## cast index

### 名称

cast-index - 计算集合中条目的存储插槽位置。

### 简介

``cast index`` *key_type* *key* *slot*

### 描述

计算集合中条目的存储插槽位置。

使用 `cast storage` 获取值。

### 可选

{{#include common-options.md}}

### 例子
```solidity
// World.sol

mapping (address => uint256) public mapping1;
mapping (string => string) public mapping2;
```

1. 计算类型为 `mapping(string => string)` 集合中的一个条目（`hello`）的存储槽，位于槽 1：
    ```sh
    >> cast index string "hello" 1
    0x3556fc8e3c702d4479a1ab7928dd05d87508462a12f53307b5407c969223d1f8
    >> cast storage [address] 0x3556fc8e3c702d4479a1ab7928dd05d87508462a12f53307b5407c969223d1f8
    world
    ```

### 请参阅

[cast](./cast.md)
