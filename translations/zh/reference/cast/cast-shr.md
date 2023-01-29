## cast shr

### 名称

cast-shr - 进行右移操作。

### 简介

``cast shr`` [*options*] *value* *shift*

### 描述

进行右移操作。

### 可选

{{#include ../common/base-options.md}}

{{#include common-options.md}}

### 例子

1. 对 0x12 的单一右移：
    ```sh
    cast shr --base-in 16 0x12 1
    ```

> 注意： --base-in 参数不强制，但如果输入的内容不明确，则需要使用。

### 请参阅

[cast](./cast.md), [cast shl](./cast-shl.md)
