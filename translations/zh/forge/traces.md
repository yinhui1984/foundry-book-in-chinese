## 理解痕迹

Forge 可以为失败的测试（`-vvv`）或所有测试（`-vvvv`）生成跟踪。

跟踪遵循相同的通用格式：

```ignore
  [<Gas Usage>] <Contract>::<Function>(<Parameters>)
    ├─ [<Gas Usage>] <Contract>::<Function>(<Parameters>)
    │   └─ ← <Return Value>
    └─ ← <Return Value>
```

每个跟踪可以有更多的子跟踪，每个子跟踪表示对合约的调用和返回值。

如果您的终端支持颜色，轨迹也会有多种颜色：

- **绿色**：对于不恢复的呼叫
- **红色**：用于恢复呼叫
- **蓝色**：用于调用作弊代码
- **青色**：用于发出的日志
- **黄色**：用于合约部署

gas 使用量（标在方括号中）用于整个函数调用。 但是，您可能会注意到，有时一条迹线的气体使用量与其所有子迹线的气体使用量并不完全匹配：

```ignore
  [24661] OwnerUpOnlyTest::testIncrementAsOwner()
    ├─ [2262] OwnerUpOnly::count()
    │   └─ ← 0
    ├─ [20398] OwnerUpOnly::increment()
    │   └─ ← ()
    ├─ [262] OwnerUpOnly::count()
    │   └─ ← 1
    └─ ← ()
```

下落不明的气体是由于调用之间发生的一些额外操作，例如算术和存储读/写。

Forge 将尝试解码尽可能多的签名和值，但有时这是不可能的。 在这些情况下，痕迹将如下所示：

```ignore
  [<Gas Usage>] <Address>::<Calldata>
    └─ ← <Return Data>
```