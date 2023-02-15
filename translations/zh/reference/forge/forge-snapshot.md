## forge snapshot

### 名称

forge-snapshot - 创建每个测试的 Gas 使用快照。

### 简介

``forge snapshot`` [*options*]

### 描述

创建每个测试的 Gas 使用快照。

结果被写入一个名为 `.gas-snapshot` 的文件中。你可以通过传递 `--snap <PATH>` 来改变该文件的名称。

在快照中默认包括模糊测试。它们使用一个静态种子来实现确定性的结果。

快照可以用 `--diff` 和 `--check` 来比较。第一个标志将输出一个差异，第二个标志将输出一个差异，如果快照不匹配，则以代码1退出。

### 选项

#### Snapshot Options

`--asc`  
Sort results by gas used (ascending).

`--desc`  
&nbsp;&nbsp;&nbsp;&nbsp;Sort results by gas used (descending).

`--min` *min_gas*  
&nbsp;&nbsp;&nbsp;&nbsp;Only include tests that used more gas that the given amount.

`--max` *max_gas*  
&nbsp;&nbsp;&nbsp;&nbsp;Only include tests that used less gas that the given amount.

`--diff` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;Output a diff against a pre-existing snapshot.

&nbsp;&nbsp;&nbsp;&nbsp;By default the comparison is done with `.gas-snapshot`.

`--check` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;Compare against a pre-existing snapshot, exiting with code 1 if they do not match.

&nbsp;&nbsp;&nbsp;&nbsp;Outputs a diff if the snapshots do not match.

&nbsp;&nbsp;&nbsp;&nbsp;By default the comparison is done with `.gas-snapshot`.

`--snap` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;Output file for the snapshot. Default: `.gas-snapshot`.

{{#include test-options.md}}

{{#include evm-options.md}}

{{#include executor-options.md}}

{{#include core-build-options.md}}

{{#include ../common/display-options.md}}

{{#include common-options.md}}

### 例子

1. Create a snapshot:
    ```sh
    forge snapshot
    ```

2. Generate a diff:
    ```sh
    forge snapshot --diff
    ```

3. Check that the snapshots match:
    ```sh
    forge snapshot --check
    ```

### 另请参阅

[forge](./forge.md), [forge test](./forge-test.md)
