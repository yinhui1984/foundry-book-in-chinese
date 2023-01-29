## cast --to-rlp

### 名称

cast---to-rlp - 将十六进制数据编码为 RLP。

### 简介

``cast --to-rlp`` *array*

### 描述

RLP 对一个十六进制字符串或一个十六进制字符串的JSON数组进行编码。

### 可选

{{#include common-options.md}}

### 例子

1. Encoding RLP data:
    ```sh
    cast --to-rlp '["0xaa","0xbb","cc"]'
   
    cast --to-rlp f0a9     
    ```
