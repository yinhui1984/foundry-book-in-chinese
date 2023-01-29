## cast 4byte-decode

### 名称

cast-4byte-decode - 使用 <https://sig.eth.samczsun.com> 对 ABI 编码的 calldata 进行解码。

### 简介

``cast 4byte-decode`` [*options*] *calldata*

### 描述

使用 <https://sig.eth.samczsun.com> 对 ABI 编码的 calldata 进行解码。

### 可选

#### 4byte Options

`--id` *id*  
&nbsp;&nbsp;&nbsp;&nbsp;要使用的解析签名的索引。
&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp;<https://sig.eth.samczsun.com> 对于一个给定的选择器，可以有多个可能的签名。 
&nbsp;&nbsp;&nbsp;&nbsp;索引可以是一个整数，或者是 "earliest" 和 "latest" 的标签。

{{#include common-options.md}}

### 例子

1. 对 `transfer` 调用的 calldata 进行解码：
    ```sh
    cast 4byte-decode 0xa9059cbb000000000000000000000000e78388b4ce79068e89bf8aa7f218ef6b9ab0e9d00000000000000000000000000000000000000000000000000174b37380cea000
    ```

### 请参阅

[cast](./cast.md), [cast 4byte](./cast-4byte.md), [cast 4byte-event](./cast-4byte-event.md)
