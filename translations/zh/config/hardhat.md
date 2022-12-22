## 与 Hardhat 集成

可以让您的 Foundry 项目与 [Hardhat](https://hardhat.org/) 一起工作。 这假设您有一个正在运行的 Foundry 项目并且想要添加 Hardhat。 它还假定熟悉 Hardhat。

### 为什么这不能开箱即用？

默认情况下，Hardhat 希望将库安装在 `node_modules` 中，这是所有 NodeJS 依赖项的默认文件夹。 Foundry 希望它们在 `lib` 中。 当然 [我们可以配置 Foundry](../reference/config/overview.md) 但不容易配置到 `node_modules` 的目录结构。

因此，推荐的设置是使用 [hardhat-preprocessor](https://www.npmjs.com/package/hardhat-preprocessor)。 顾名思义，Hardhat-preprocessor 是一个 Hardhat 插件，它允许我们在合约通过 Solidity 编译器运行之前对其进行预处理。

我们使用它来修改 Solidity 文件中的导入指令，以在 Hardhat 尝试编译它们之前根据 Foundry `remappings.txt` 文件解析库的绝对路径。 这当然只是发生在内存中，所以你实际的 Solidity 文件永远不会改变。 现在，Hardhat 很乐意使用您随 Foundry 安装的库来遵守和编译。

### 给我看看示例回购！

[享受！](https://github.com/foundry-rs/hardhat-foundry-template)

如果您想将其改编为您已有的 Foundry 项目或了解其工作原理，请阅读以下内容：

### 指示

在您的 Foundry 项目工作目录中：

1. `npm init` - 照常设置您的项目详细信息。
2. `npm install --save-dev hardhat` - 安装 Hardhat。
3. `npx hardhat` - 在同一目录中设置您认为合适的 Hardhat 项目。
4. `forge remappings > remappings.txt` - 每次在 Foundry 中修改库时都需要重新运行它。

现在您需要对 Hardhat 项目进行以下更改。 以下假定 TypeScript 设置：

1. `npm install --save-dev hardhat-preprocessor` - [hardhat-preprocessor 的详细信息](https://www.npmjs.com/package/hardhat-preprocessor)
2. 添加 `import "hardhat-preprocessor";` 到您的 `hardhat.config.ts` 文件。
3. 确保存在以下函数（您可以将其添加到您的 `hardhat.config.ts` 文件或其他地方并导入它 - 还要确保 `import fs from "fs";` 存在于添加的文件中） :

```typescript
function getRemappings() {
  return fs
    .readFileSync("remappings.txt", "utf8")
    .split("\n")
    .filter(Boolean) // remove empty lines
    .map((line) => line.trim().split("="));
}
```

*感谢 [@DrakeEvansV1](https://twitter.com/drakeevansv1) 和 [@colinnielsen](https://github.com/colinnielsen) 提供此片段*

4. 将以下内容添加到导出的`HardhatUserConfig`对象中：

```typescript
...
preprocess: {
  eachLine: (hre) => ({
    transform: (line: string) => {
      if (line.match(/^\s*import /i)) {
        for (const [from, to] of getRemappings()) {
          if (line.includes(from)) {
            line = line.replace(from, to);
            break;
          }
        }
      }
      return line;
    },
  }),
},
paths: {
  sources: "./src",
  cache: "./cache_hardhat",
},
...
```

现在，Hardhat 应该可以很好地与 Foundry 配合使用。 您可以运行 Foundry 测试或 Hardhat 测试/脚本并访问您的合约。

### 在现有的 Hardhat 项目中使用 Foundry

假设您已经有一个 Hardhat 项目，其中包含一些依赖项，例如目录 `node_modules/` 中的`@OpenZeppelin/contracts`。

您可以通过 4 个步骤在此项目中使用 Foundry 测试。

在我们开始之前，让我们看一下目录：

- 合同在“合同”中
- Hardhat 单元测试在 `test` 中，我们会将 Foundry 测试文件放在 `test/foundry` 中
- Hardhat 将其缓存放在 `cache` 中，我们将把 Foundry 缓存放在 `forge-cache` 中

### 添加Foundry测试的4个步骤

1. 将新创建的空 Foundry 项目中的 lib/forge-std 复制到 Hardhat 项目目录中。 注意：您还可以运行 `forge init --force` 在这个非空目录中初始化一个 Foundry 项目，并删除由 Foundry init 创建的不需要的目录。
2. 将`foundry.toml` 配置复制到这个Hardhat 项目目录，并更改其中的`src`、`out`、`test`、`cache_path`：

```toml
[profile.default]
src = 'contracts'
out = 'out'
libs = ['node_modules', 'lib']
test = 'test/foundry'
cache_path  = 'forge-cache'

# See more config options https://book.getfoundry.sh/reference/config.html
```

3. 创建一个 `remappings.txt` 使 Foundry 项目与 VS Code Solidity 扩展一起工作：

```ignore
ds-test/=lib/forge-std/lib/ds-test/src/
forge-std/=lib/forge-std/src/
```

查看有关 `remappings.txt` 和 VS Code Solidity 扩展的更多信息：[Remapping dependencies](../projects/dependencies.md?#remapping-dependencies), [Integrating with VSCode](vscode.md)

4. 创建一个子目录 `test/foundry` 并在其中编写 Foundry 测试。

让我们将示例测试文件 `Contract.t.sol` 放在这个目录中并运行 Foundry 测试

```bash
forge test
```

现在，Foundry 测试在这个现有的 Hardhat 项目中工作。 由于 Hardhat 项目没有被触及，它可以像以前一样工作。
