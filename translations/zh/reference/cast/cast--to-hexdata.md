## cast --to-hexdata

### 名称

cast---to-hexdata - 将输入规范化为小写，0x- 前缀的十六进制。

### 简介

``cast --to-hexdata`` [*options*] *input*

### 描述

将输入规范化为小写，0x- 前缀的十六进制。

输入数据（*input*）可以是：

- 带或不带 0x 前缀的混合大小写十六进制。
- 应该连接的 0x 前缀的十六进制，用 `:` 分隔。
- 一个包含十六进制的文件的绝对路径。
- 一个 `@tag`，其中标签在环境变量中定义。

### 可选

{{#include common-options.md}}

### 例子

1. 添加 0x 前缀：
    ```sh
    cast --to-hexdata deadbeef
    ```

2. 串接十六进制值：
    ```sh
    cast --to-hexdata "deadbeef:0xbeef"
    ```

3. N将 `MY_VAR` 中的十六进制值规范化：
    ```sh
    cast --to-hexdata "@MY_VAR"
    ```

### 请参阅

[cast](./cast.md)
