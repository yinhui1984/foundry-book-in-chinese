#### Watch Options

`-w` [*path...*]  
`--watch` [*path...*]  
&nbsp;&nbsp;&nbsp;&nbsp;监听特定的文件或文件夹。

&nbsp;&nbsp;&nbsp;&nbsp;默认情况下，项目的源目录被监听着。

`-d` *delay*  
`--delay` *delay*  
&nbsp;&nbsp;&nbsp;&nbsp;文件更新的退避延迟。

&nbsp;&nbsp;&nbsp;&nbsp;在延迟期间，传入的变化事件被累积，只有在延迟过后，才会采取相应的行动。
&nbsp;&nbsp;&nbsp;&nbsp;请注意，这并不意味着一个命令会被启动：如果给出了 `--no-restart`，而一个命令已经在运行，那么这个动作的结果将是什么都不做。

&nbsp;&nbsp;&nbsp;&nbsp;默认为 50ms。默认解析为十进制的秒，但使用带有 `ms` 后缀的整数可能更方便。

&nbsp;&nbsp;&nbsp;&nbsp;当使用 `--poll` 模式时，你需要一个更大的持续时间，否则会有磁盘 I/O 过载的风险。

`--no-restart`  
&nbsp;&nbsp;&nbsp;&nbsp;在命令运行时不要重新启动。

`--run-all`  
&nbsp;&nbsp;&nbsp;&nbsp;当有变化时，明确地对所有文件重新运行命令。
