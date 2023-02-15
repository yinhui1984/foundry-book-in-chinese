## forge flatten

### 名称

forge-flatten - 将一个源文件及其所有的导入文件扁平化到一个文件中。

### 简介

``forge flatten`` [*options*] *file*

### 描述

将一个源文件及其所有的导入文件扁平化到一个文件中。

如果没有设置 `--output <FILE>`，那么扁平化的合约将被输出到 stdout。

### 选项

#### 扁平化选项

`-o` *file*  
`--output` *file*  
&nbsp;&nbsp;&nbsp;&nbsp;输出扁平化合约的路径。如果不指定，扁平化的合约将被输出到stdout。

{{#include project-options.md}}

{{#include common-options.md}}

### 例子

1. 扁平化 `src/Contract.sol`：
    ```sh
    forge flatten src/Contract.sol
    ```

2. 扁平化 `src/Contract.sol` 并且输出结果到 `src/Contract.flattened.sol`：
    ```sh
    forge flatten --output src/Contract.flattened.sol src/Contract.sol
    ```


### 另请参阅

[forge](./forge.md), [forge verify-contract](./forge-verify-contract.md)
