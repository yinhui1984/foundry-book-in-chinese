## cast shl

### 名称

cast-shl - 进行左移操作。

### 简介

``cast shl`` [*options*] *value* *shift*

### 描述

进行左移操作。

### 可选

{{#include ../common/base-options.md}}

{{#include common-options.md}}

### 例子

1. 对数字61进行3位左移：
    ```sh
    cast shl --base-in 10 61 3
    ```

> 注意： --base-in 参数不强制，但如果输入的内容不明确，则需要使用。

### 请参阅

[cast](./cast.md), [cast shr](./cast-shr.md)
