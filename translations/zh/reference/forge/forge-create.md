## forge create

### 名称

forge-create - 部署一个智能合约。

### 简介

``forge create`` [*options*] *contract*

### 描述

部署一个智能合约。

合约的路径格式为 `<path>:<contract>`，例如 `src/Contract.sol:Contract`。

你可以用 `--constructor-args` 来指定构造函数参数。或者，你也可以用 `--constructor-args-path` 指定一个包含空格分隔的构造函数参数的文件。

不支持动态链接：你应该预先部署你的库，并手动指定它们的地址（见`--libraries`）。

> ℹ️ **注意**
>
> `--constructor-args` 标志必须在命令中放在最后，因为它需要多个值。

### 选项

#### 构建选项

`--constructor-args` *args...*  
&nbsp;&nbsp;&nbsp;&nbsp;构造函数的参数。

`--constructor-args-path` *file*  
&nbsp;&nbsp;&nbsp;&nbsp;包含构造函数参数的文件的路径。

`--verify`  
&nbsp;&nbsp;&nbsp;&nbsp;创建后验证合约。使用适当的参数运行 `forge verify-contract`。

{{#include ../common/verifier-options.md}}

`--unlocked`  
&nbsp;&nbsp;&nbsp;&nbsp;通过 `eth_sendTransaction` 发送，使用 `--from` 参数或`$ETH_FROM` 作为发送方。

{{#include ../common/transaction-options.md}}

{{#include ../common/wallet-options.md}}

{{#include ../common/rpc-options.md}}

{{#include ../common/etherscan-options.md}}

{{#include core-build-options.md}}

{{#include ../common/display-options.md}}

{{#include common-options.md}}

### 例子

1. 部署一个没有构造函数参数的合约：
    ```sh
    forge create src/Contract.sol:ContractWithNoConstructor
    ```

2. 部署一个有两个构造参数的合约：
    ```sh
    forge create src/Contract.sol:MyToken --constructor-args "My Token" "MT"
    ```

### 另请参阅

[forge](./forge.md), [forge build](./forge-build.md), [forge verify-contract](./forge-verify-contract.md)

[eip1559]: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1559.md
