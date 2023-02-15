## `forge cache ls`

### 名称

forge-cache-ls - 显示来自 ``~/.foundry`` 的缓存数据。

### 简介

`forge cache ls` [*chains..*]

### 描述

列出目前在 `~/.foundry/cache` 文件夹中的内容。

### 选项

{{#include common-options.md}}

### 例子

1. 显示整个缓存（另外，`forge cache ls` 是这个的一个别名）。
    ```sh
    forge cache ls all
    ```

2. 按名称显示特定链的缓存数据
    ```sh
    forge cache ls rinkeby
    ```
   
3. 指定多条链
    ```sh
    forge cache ls rinkeby mainnet
    ```

### 另请参阅
[forge](./forge.md), [forge cache](./forge-cache.md)