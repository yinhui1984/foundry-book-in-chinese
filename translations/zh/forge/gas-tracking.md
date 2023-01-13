## Gas 追踪

Forge 可以帮助您估算您的合约将消耗多少 gas。

目前，Forge 为这项工作提供了两种不同的工具，但它们可能会在未来合并：

- [**Gas reports**](./gas-reports.md)：Gas 报告让您大致了解到 Forge 认为
   你的合约中的各个函数消耗 gas 的概况。
- [**Gas snapshots**](./gas-snapshots.md)：Gas 快照让您大致了解
   每次测试消耗 Gas 的概况。

Gas 报告和 Gas 快照在某些方面有所不同：

- Gas 报告使用跟踪来计算单个合约调用的 Gas 成本。
   这以速度为代价提供了更精细的洞察力。
- Gas 快照具有更多内置工具，例如将差异和结果导出到文件。
   快照不像 Gas 报告那样精细，但生成速度更快。
