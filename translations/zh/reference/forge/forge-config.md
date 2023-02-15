## forge config

### 名称

forge-config - 显示当前的配置。

### 简介

``forge config`` [*options*]

### 描述

显示当前的配置。

这个命令可以用来创建一个新的基本的 `foundry.toml` 或查看当前设置的值，将环境变量和全局配置文件考虑在内。

该命令支持 Forge 中其他命令的几乎所有标志，以允许在显示的配置中覆盖数值。

### 选项

#### 配置选项

`--basic`  
&nbsp;&nbsp;&nbsp;&nbsp;打印一个基本的配置文件。

`--fix`  
&nbsp;&nbsp;&nbsp;&nbsp;试图修复任何配置警告。

{{#include common-options.md}}

### 例子

1. 创建一个新的基本配置：
    ```sh
    forge config > foundry.toml
    ```

2. 在 `foundry.toml` 开启 FFI：
    ```sh
    forge config --ffi > foundry.toml
    ```

### 另请参阅

[forge](./forge.md)
