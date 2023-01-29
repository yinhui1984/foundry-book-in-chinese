## cast upload-signature

### 名称

cast-upload-signature

### 简介

`cast upload-signature` [*signatures...*]

### 描述

将指定的签名上传到 [https://sig.eth.samczsun.com](https://sig.eth.samczsun.com)。

### 可选

{{#include common-options.md}}

### 例子

1. 上传签名
    ```sh
    cast upload-signature 'function approve(address,uint256)' \
   'transfer(uint256)' 'event Transfer(uint256,address)'
    ```