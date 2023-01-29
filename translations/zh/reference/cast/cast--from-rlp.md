## cast --from-rlp

### 名称

cast---from-rlp - 对 RLP 编码的数据进行解码。

### 简介

``cast --from-rlp`` *data*

### 描述

对 RLP 编码的数据进行解码。

*data* 是一个十六进制的字符串，前缀为可选的 0x。

### 可选

{{#include common-options.md}}

### 例子

1. 解码 RLP 数据:
    ```sh
    cast --from-rlp 0xc481f181f2

    cast --from-rlp c481f181f2
    ```
