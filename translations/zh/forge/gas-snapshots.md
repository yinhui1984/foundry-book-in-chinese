## Gas快照

Forge 可以为您的所有测试功能生成Gas快照。 这个可以有助于大致了解您的合约将消耗多少Gas，
或者比较各种优化前后的Gas使用情况。

要生成 gas 快照，请运行 [`forge snapshot`](../reference/forge/forge-snapshot.md)。

默认情况下，这将生成一个名为“.gas-snapshot”的文件，其中包含你所有的测试及其各自的Gas使用情况。

```ignore
$ forge snapshot
$ cat .gas-snapshot

ERC20Test:testApprove() (gas: 31162)
ERC20Test:testBurn() (gas: 59875)
ERC20Test:testFailTransferFromInsufficientAllowance() (gas: 81034)
ERC20Test:testFailTransferFromInsufficientBalance() (gas: 81662)
ERC20Test:testFailTransferInsufficientBalance() (gas: 52882)
ERC20Test:testInfiniteApproveTransferFrom() (gas: 90167)
ERC20Test:testMetadata() (gas: 14606)
ERC20Test:testMint() (gas: 53830)
ERC20Test:testTransfer() (gas: 60473)
ERC20Test:testTransferFrom() (gas: 84152)
```

### 过滤

如果您想指定不同的输出文件，请运行`forge snapshot --snap <FILE_NAME>`。

您还可以按Gas使用量对结果进行排序。 使用 `--asc` 选项对结果进行排序
升序和 `--desc` 以降序排列结果。

最后，您还可以为所有测试指定最小/最大Gas阈值。
要仅包含高于阈值的结果，您可以使用 --min <VALUE> 选项。
以同样的方式，只包括阈值以下的结果，
您可以使用 `--max <VALUE>` 选项。

请记住，更改将在快照文件中进行，而不是在快照中进行
显示在您的屏幕上。

您还可以将其与 forge test 的过滤器结合使用，例如 `forge snapshot --match-path contracts/test/ERC721.t.sol` 以生成与此测试合约相关的 gas 快照。

### 比较gas用量

如果您想将当前快照文件与您的最新更改，您可以使用 `--diff` 或 `--check` 选项。

`--diff` 将与快照进行比较并显示快照的更改。

它还可以选择使用文件名（`--diff <FILE_NAME>`），默认是`.gas-snapshot`。

例如：

```ignore
$ forge snapshot --diff .gas-snapshot2

Running 10 tests for src/test/ERC20.t.sol:ERC20Test
[PASS] testApprove() (gas: 31162)
[PASS] testBurn() (gas: 59875)
[PASS] testFailTransferFromInsufficientAllowance() (gas: 81034)
[PASS] testFailTransferFromInsufficientBalance() (gas: 81662)
[PASS] testFailTransferInsufficientBalance() (gas: 52882)
[PASS] testInfiniteApproveTransferFrom() (gas: 90167)
[PASS] testMetadata() (gas: 14606)
[PASS] testMint() (gas: 53830)
[PASS] testTransfer() (gas: 60473)
[PASS] testTransferFrom() (gas: 84152)
Test result: ok. 10 passed; 0 failed; finished in 2.86ms
testBurn() (gas: 0 (0.000%))
testFailTransferFromInsufficientAllowance() (gas: 0 (0.000%))
testFailTransferFromInsufficientBalance() (gas: 0 (0.000%))
testFailTransferInsufficientBalance() (gas: 0 (0.000%))
testInfiniteApproveTransferFrom() (gas: 0 (0.000%))
testMetadata() (gas: 0 (0.000%))
testMint() (gas: 0 (0.000%))
testTransfer() (gas: 0 (0.000%))
testTransferFrom() (gas: 0 (0.000%))
testApprove() (gas: -8 (-0.000%))
Overall gas change: -8 (-0.000%)
```

`--check` 将快照与现有快照文件进行比较并显示所有差异，如果有的话。 您可以通过提供不同的文件名来更改要比较的文件：`--check <FILE_NAME>`。

```ignore
$ forge snapshot --check .gas-snapshot2

Running 10 tests for src/test/ERC20.t.sol:ERC20Test
[PASS] testApprove() (gas: 31162)
[PASS] testBurn() (gas: 59875)
[PASS] testFailTransferFromInsufficientAllowance() (gas: 81034)
[PASS] testFailTransferFromInsufficientBalance() (gas: 81662)
[PASS] testFailTransferInsufficientBalance() (gas: 52882)
[PASS] testInfiniteApproveTransferFrom() (gas: 90167)
[PASS] testMetadata() (gas: 14606)
[PASS] testMint() (gas: 53830)
[PASS] testTransfer() (gas: 60473)
[PASS] testTransferFrom() (gas: 84152)
Test result: ok. 10 passed; 0 failed; finished in 2.47ms
Diff in "ERC20Test::testApprove()": consumed "(gas: 31162)" gas, expected "(gas: 31170)" gas 
```
