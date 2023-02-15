## forge remove

### 名称

forge-remove - 删除一个或多个依赖。

### 简介

``forge remove`` [*options*] [*deps...*]

### 描述

删除一个或多个依赖。

依赖可以是一个原始的 URL（`https://foo.com/dep`）、GitHub 仓库的路径（`owner/repo`）或项目树中的依赖的路径。

### 选项

{{#include common-options.md}}

### 例子

1. 按路径删除一个依赖：
    ```sh
    forge remove lib/solmate
    ```

2. 通过 GitHub 仓库名称删除一个依赖。
    ```sh
    forge remove dapphub/solmate
    ```

### 另请参阅

[forge](./forge.md), [forge install](./forge-install.md), [forge update](./forge-update.md)
