## cast pretty-calldata

### 名称

cast-pretty-calldata - 漂亮地打印 Calldata。

### 简介

``cast pretty-calldata`` [*options*] *calldata*

### 描述

漂亮地打印 Calldata。

尝试使用 <https://sig.eth.samczsun.com> 解码 calldata，除非通过 `--offline`。

### 可选

#### 4byte 选项

`-o`  
`--offline`  
&nbsp;&nbsp;&nbsp;&nbsp;跳过 <https://sig.eth.samczsun.com> 查找。

{{#include common-options.md}}

### 例子

1. 对 `transfer` 调用的 calldata 进行解码：
    ```sh
    cast pretty-calldata 0xa9059cbb000000000000000000000000e78388b4ce79068e89bf8aa7f218ef6b9ab0e9d00000000000000000000000000000000000000000000000000174b37380cea000
    ```

### 请参阅

[cast](./cast.md), [cast 4byte-decode](./cast-4byte-decode.md)
