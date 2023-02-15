## forge test

### 名称

forge-test - 运行项目的测试。

### 简介

``forge test`` [*options*]

### 描述

运行项目的测试。

#### 分叉

通过传递 `--fork-url <URL>`，可以在分叉环境中运行测试。

当在分叉环境中运行测试时，你可以像部署合约那样访问分叉链的所有状态。[作弊代码][cheatcodes] 仍然可用。

你也可以通过 `--fork-block-number <BLOCK>` 来指定分叉的区块编号。当从一个特定的区块分叉时，链上的数据会被缓存到 `~/.foundry/cache`。如果你不想缓存链上的数据，请传递 `--no-store-caching`。

在分叉环境中运行时，本地合约无法解码的追踪（例如调用发布在主网的合约，如代币）可以选择使用Etherscan 解码。要使用 Etherscan 进行追踪解码，请设置 `ETHERSCAN_API_KEY` 或传递 `--etherscan-api-key <KEY>`。

#### 调试

可以在交互式调试器中运行一个测试。要启动调试器，请通过 `--debug <TEST>`。

如果多个测试与指定的模式相匹配，你必须使用其他测试过滤器，以便将匹配的测试数量减少到刚好 1 个。

如果该测试是一个单元测试，它将在调试器中立即打开。

如果测试是模糊测试，模糊测试会被运行，并且在第一个失败的情况下打开调试器。
如果模糊测试没有失败的情况，调试器会在最后一个情况下打开。

关于调试器的更多信息可以在 [调试器章节][debugger] 中找到。

#### Gas 报告

你可以通过传递 `--gas-report` 来生成气体报告。

关于 Gas 报告的更多信息可以在 [Gas 报告章节][gas-reports] 中找到。

#### List

可以列出测试而不运行它们。
你可以传递 `--json`，使外部扩展更容易解析结构化内容。

### 选项

{{#include test-options.md}}

{{#include evm-options.md}}

{{#include executor-options.md}}

{{#include core-build-options.md}}

{{#include watch-options.md}}

{{#include ../common/display-options.md}}

`--list`  
&nbsp;&nbsp;&nbsp;&nbsp;列出测试而不是运行它们。

{{#include common-options.md}}

### 例子

1. 运行测试：
    ```sh
    forge test
    ```

2. 在调试器中打开一个测试：
    ```sh
    forge test --debug testSomething
    ```

3. 生成一个 Gas 报告：
    ```sh
    forge test --gas-report
    ```

4. 只运行 `test/Contract.t.sol` 中的 `BigTest` 合约且以 `testFail` 开头的测试：
    ```sh
    forge test --match-path test/Contract.t.sol --match-contract BigTest \
      --match-test "testFail*"
    ```

5. 以期望的格式列出测试：
    ```sh
    forge test --list
    forge test --list --json
    forge test --list --json --match-test "testFail*" | tail -n 1 | json_pp
    ```

### 另请参阅

[forge](./forge.md), [forge build](./forge-build.md), [forge snapshot](./forge-snapshot.md)

[debugger]: ../../forge/debugger.md
[cheatcodes]: ../../cheatcodes/
[gas-reports]: ../../forge/gas-reports.md
