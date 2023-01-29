## cast run

### 名称

cast-run - 在本地环境中运行一个已发布的交易，并打印出跟踪。

### 简介

``cast run`` [*options*] `--rpc-url` *url* *tx_hash*

### 描述

在本地环境中运行一个已发布的交易，并打印出跟踪。

默认情况下，在你想重放的交易所在区块中的交易也会被重放。
如果你想得到更快的结果，你可以使用 `--quick`，但是，结果可能与链上执行的结果不同。

你也可以通过传递 `--debug` 在调试器中打开该交易。

### 可选

#### Run 选项

`--label` *label*  
&nbsp;&nbsp;&nbsp;&nbsp;在跟踪中标记一个地址。 
&nbsp;&nbsp;&nbsp;&nbsp;格式是 `<address>:<label>`。可以多次传递。

`-q`  
`--quick`  
&nbsp;&nbsp;&nbsp;&nbsp;只用前一个区块的状态来执行交易。 
&nbsp;&nbsp;&nbsp;&nbsp;可能会导致与链上执行不同的结果!

`-v`  
`--verbose`  
&nbsp;&nbsp;&nbsp;&nbsp;地址被完全显示，而不是被截断。

`-d`  
`--debug`  
&nbsp;&nbsp;&nbsp;&nbsp;在 [debugger][debugger] 中打开该脚本。

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 重放一个交易（一个简单的转账）：
    ```sh
    cast run 0xd15e0237413d7b824b784e1bbc3926e52f4726e5e5af30418803b8b327b4f8ca
    ```

2. 重放一个交易，应用在上一个区块的状态之上：
    ```sh
    cast run --quick \
      0xd15e0237413d7b824b784e1bbc3926e52f4726e5e5af30418803b8b327b4f8ca
    ```

3. 用地址标签重放一次交易：
    ```sh
    cast run \
      --label 0xc564ee9f21ed8a2d8e7e76c085740d5e4c5fafbe:sender \
      --label 0x40950267d12e979ad42974be5ac9a7e452f9505e:recipient \
      --label 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:weth \
      0xd15e0237413d7b824b784e1bbc3926e52f4726e5e5af30418803b8b327b4f8ca
    ```

4. 在调试器中重放一个事务：
    ```sh
    cast run --debug \
      0xd15e0237413d7b824b784e1bbc3926e52f4726e5e5af30418803b8b327b4f8ca
    ```

### 请参阅

[cast](./cast.md)

[debugger]: ../../forge/debugger.md
