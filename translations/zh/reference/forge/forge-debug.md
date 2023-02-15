## forge debug

### 名称

forge-debug - 将单个智能合约作为脚本进行调试。

### 简介

``forge debug`` [*options*] *path* [*args...*]

### 描述

将位于源文件（*path*）中的单个智能合约作为脚本进行调试。

如果在指定的源文件中有多个合约，你必须通过 `--target-contract` 来指定你要运行的合约。

#### 调用

在脚本被部署到内部 EVM 后，如果一个签名为 `setUp()` 的函数存在的话，将被调用。

默认情况下，脚本被认为是包含在一个签名为 `run()` 的函数中。如果你想运行一个不同的函数，请传递 `--sig <SIGNATURE>`。

签名可以是一个片段（`<函数名>(<类型>)`），或者是原始的 Calldata。

如果你传递一个片段，并且该函数有参数，你可以将调用参数添加到命令的末尾（*args*）。

#### 分叉

通过传递 `--fork-url <URL>`，可以在分叉的环境中运行脚本

当脚本在分叉环境中运行时，你可以像部署脚本那样访问分叉链的所有状态。[作弊代码][cheatcodes] 仍然可用。

你也可以通过 `--fork-block-number <BLOCK>` 来指定分叉的区块编号。当从一个特定的区块分叉时，链上的数据会被缓存到 `~/.foundry/cache`。如果你不想缓存链上的数据，请传递`--no-store-caching`。

#### 调试

可以在交互式调试器中运行该脚本。要启动调试器，请传递 `--debug`。

关于调试器的更多信息可以在 [调试器章节][debugger] 中找到。

### 选项

#### 调试选项

`--target-contract` *contract_name*  
&nbsp;&nbsp;&nbsp;&nbsp;你想要运行的合约名称

`-s` *signature*  
`--sig` *signature*  
&nbsp;&nbsp;&nbsp;&nbsp;你想在合约中调用的函数的签名，或原始的 calldata。默认：`run()`。

`--debug`  
&nbsp;&nbsp;&nbsp;&nbsp;在 [调试器][debugger] 中打开脚本。

{{#include evm-options.md}}

{{#include executor-options.md}}

{{#include core-build-options.md}}

{{#include common-options.md}}

### 例子

1. 在一个合约中执行 `run()` 函数：
    ```sh
    forge debug src/Contract.sol
    ```

2. 在调试器中打开一个脚本：
    ```sh
    forge debug src/Contract.sol --debug
    ```

3. 在一个合约中执行 `foo()` 函数：
    ```sh
    forge debug src/Contract.sol --sig "foo()"
    ```

4. 用一个带参数的函数执行一个合约：
    ```sh
    forge debug src/Contract.sol --sig "foo(string,uint256)" "hello" 100
    ```

5. 执行一个带有原始 Calldata 的合约：
    ```sh
    forge debug src/Contract.sol --sig "0x..."
    ```

### 另请参阅

[forge](./forge.md), [forge test](./forge-test.md)

[debugger]: ../../forge/debugger.md
[cheatcodes]: ../../cheatcodes/
