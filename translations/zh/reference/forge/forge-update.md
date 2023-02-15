## forge update

### 名称

forge-update - 更新一个或多个依赖。

### 简介

``forge update`` [*options*] [*dep*]

### 描述

更新一个或多个依赖。

参数 *dep* 是你要更新的依赖关系的路径。
Forge 将更新到你在运行 [`forge install`](./forge-install.md) 时为依赖关系指定的ref 上的最新版本。

如果没有提供参数，那么所有的依赖都会被更新。

### 选项

{{#include common-options.md}}

### 例子

1. 更新一个依赖：
    ```sh
    forge update lib/solmate
    ```

2. 更新所有依赖：
    ```sh
    forge update
    ```

### 另请参阅

[forge](./forge.md), [forge install](./forge-install.md), [forge remove](./forge-remove.md)
