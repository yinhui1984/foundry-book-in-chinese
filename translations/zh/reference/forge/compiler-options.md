#### 编译器选项

`--optimize`  
&nbsp;&nbsp;&nbsp;&nbsp;激活 Solidity 优化器。

`--optimizer-runs` *runs*  
&nbsp;&nbsp;&nbsp;&nbsp;优化器 runs 的选项。

`--via-ir`  
&nbsp;&nbsp;&nbsp;&nbsp;使用 Yul 作为编译管道的中间语言。

`--revert-strings`  
&nbsp;&nbsp;&nbsp;&nbsp;如何处理 revert 和 require 的结果字符串。

`--use` *solc_version*  
&nbsp;&nbsp;&nbsp;&nbsp;指定 solc 的版本，或一个本地 solc 的路径，以进行编译。

&nbsp;&nbsp;&nbsp;&nbsp;有效值的格式为 `x.y.z`，`solc:x.y.z` 或 `path/to/solc`。

`--offline`  
&nbsp;&nbsp;&nbsp;&nbsp;不使用网络，缺失的 solc 版本将不会被安装。

`--no-auto-detect`  
&nbsp;&nbsp;&nbsp;&nbsp;不使用 solc 的自动检测。

`--ignored-error-codes` *error_codes*  
&nbsp;&nbsp;&nbsp;&nbsp;从错误代码中忽略 solc 警告。该参数是一个以逗号分隔的错误代码列表。

`--extra-output` *selector*  
&nbsp;&nbsp;&nbsp;&nbsp;额外的产出要包括在合约的 artifact 中。

&nbsp;&nbsp;&nbsp;&nbsp;示例键： `abi`, `storageLayout`, `evm.assembly`, `ewasm`, `ir`, `ir-optimized`, `metadata`。

&nbsp;&nbsp;&nbsp;&nbsp;关于完整的描述, 请参阅 [Solidity docs][output-desc]。

`--extra-output-files` *selector*  
&nbsp;&nbsp;&nbsp;&nbsp;额外的输出写到单独的文件。

&nbsp;&nbsp;&nbsp;&nbsp;示例键： `abi`, `storageLayout`, `evm.assembly`, `ewasm`, `ir`, `ir-optimized`, `metadata`.

&nbsp;&nbsp;&nbsp;&nbsp;关于完整的描述, 请参阅 [Solidity docs][output-desc].

`--evm-version` *version*  
&nbsp;&nbsp;&nbsp;&nbsp;目标 EVM 版本

[输出描述]: https://docs.soliditylang.org/en/latest/using-the-compiler.html#compiler-api
