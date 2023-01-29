## cast --to-base

### 名称

cast---to-base - 将一个进制底数转换为其它底数。

### 简介

``cast --to-base`` [*options*] *value* *base*

### 描述

将一个进制底数转换为其它底数。

### 可选

#### Base 选项

`--base-in` *base*
&nbsp;&nbsp;&nbsp;&nbsp;输入数字的进制底数。可用的选项：

&nbsp;&nbsp;&nbsp;&nbsp;10, d, dec, decimal

&nbsp;&nbsp;&nbsp;&nbsp;16, h, hex, hexadecimal

{{#include common-options.md}}

### 例子

1. 将十进制数字 64 转换为十六进制
    ```sh
    cast --to-base 64 hex
    ```

2. 将十六进制数字 100 转换为二进制
    ```sh
    cast --to-base 0x100 2
    ```

> 注意： --base-in 参数不强制需要，但如果输入的内容不明确，则需要使用。

### 请参阅

[cast](./cast.md)
