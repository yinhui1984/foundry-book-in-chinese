#### EVM 选项

`-f` *url*  
`--rpc-url` *url*  
`--fork-url` *url*  
&nbsp;&nbsp;&nbsp;&nbsp;通过远程端点获取状态，而不是从一个空的状态开始。

&nbsp;&nbsp;&nbsp;&nbsp;如果你想从一个特定的区块号码中获取状态，请参阅
`--fork-block-number`.

`--fork-block-number` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;通过一个远程端点从一个特定的区块号中获取状态。请见 `--fork-url`.

`--fork-retry-backoff <BACKOFF>`  
&nbsp;&nbsp;&nbsp;&nbsp; 初始化遇到错误时的重试退避。

`--no-storage-caching`  
&nbsp;&nbsp;&nbsp;&nbsp;明确禁止使用 RPC 缓存。

&nbsp;&nbsp;&nbsp;&nbsp;所有存储槽完全从端点读取。请见 `--fork-url`。

`-v`  
`--verbosity`  
&nbsp;&nbsp;&nbsp;&nbsp;EVM 的日志级别。

&nbsp;&nbsp;&nbsp;&nbsp;多次传递，以提高日志级别 (例如 `-v`, `-vv`, `-vvv`)。

&nbsp;&nbsp;&nbsp;&nbsp;日志级别：
&nbsp;&nbsp;&nbsp;&nbsp;- 2: 打印所有测试的日志
&nbsp;&nbsp;&nbsp;&nbsp;- 3: 打印失败测试的执行追踪
&nbsp;&nbsp;&nbsp;&nbsp;- 4: 对所有测试进行跟踪，并对失败的测试进行设置跟踪
&nbsp;&nbsp;&nbsp;&nbsp;- 5: 打印所有测试的执行和设置跟踪

`--sender` *address*  
&nbsp;&nbsp;&nbsp;&nbsp;用作执行测试的地址

`--initial-balance` *balance*  
&nbsp;&nbsp;&nbsp;&nbsp;已部署合约的初始余额

`--ffi`  
&nbsp;&nbsp;&nbsp;&nbsp;开启 [FFI 作弊码][ffi-cheatcode]

[ffi-cheatcode]: ../../cheatcodes/ffi.md
