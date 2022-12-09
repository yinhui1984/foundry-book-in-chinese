## 处理现有项目

如果您下载一个使用 Foundry 的现有项目，那真的很容易上手。

首先，从某个地方获取项目。 在此示例中，我们将从 GitHub 克隆 `femplate` 存储库：

```sh
$ git 克隆 https://github.com/abigger87/femplate
$ cd 模板
$ 伪造安装
```

我们运行 [`forge install`](../reference/forge/forge-install.md) 来安装项目中的子模块依赖项。

要构建，请使用 [`forge build`](../reference/forge/forge-build.md)：

```sh
{{#include ../output/femplate/forge-build:all}}
```

要进行测试，请使用 [`forge test`](../reference/forge/forge-test.md)：

```sh
{{#include ../output/femplate/forge-test:all}}
```