## cast --to-unit

### 名称

cast---to-unit - 将一个 eth 单位转换为另一个单位。

### 简介

``cast --to-unit`` [*options*] *value* [*unit*]

### 描述

将一个 eth 单位转换为另一个单位。

要转换的值 (*value*) 可以是一定数量的 eth (以 wei 为单位)，也可以是一个附有单位的数字。

有效的单位为：

- `ether`
- `gwei`
- `wei`

### 可选

{{#include common-options.md}}

### 例子

1. 转换 1000 wei 为 gwei
    ```sh
    cast --to-unit 1000 gwei
    ```

2. 转换 1 eth 为 gwei
    ```sh
    cast --to-unit 1ether gwei
    ```

### 请参阅

[cast](./cast.md)
