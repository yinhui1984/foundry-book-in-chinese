# 最佳实践

本指南记录了使用 Foundry 进行开发时建议的最佳实践。
一般而言，建议尽可能使用 [`forge fmt`](../reference/config/formatter.md) 处理，不处理的内容如下。

- [一般合约指南](#general-contract-guidance)
- [测试](#tests)
   - [一般测试指南](#general-test-guidance)
   - [分叉测试](#fork-tests)
   - [测试工具](#test-harnesses)
     - [内部函数](#internal-functions)
     - [私有函数](#private-functions)
     - [Workaround函数](#workaround-functions)
   - [最佳实践](#best-practices)
   - [污点分析](#taint-analysis)
- [脚本](#scripts)
- [评论](#comments)
- [资源](#resources)

## 一般合约指南

1. 始终使用命名导入语法，不要导入完整文件。 这将导入的内容限制为仅指定的项目，而不是文件中的所有内容。 导入完整文件可能会导致 solc 重复定义和滑动错误，尤其是当 repos 增长并且具有更多具有重叠名称的依赖项时。

    - Good：`import {MyContract} from "src/MyContract.sol"` 只导入 `MyContract`。
    - Bad：`import "src/MyContract.sol"` 导入 `MyContract.sol` 中的所有内容。 （导入 `forge-std/Test` 或 `Script` 在这里可能是个例外，因此您可以获得控制台库等）。

2. 首先按 `forge-std/` 对导入进行排序，然后是依赖项、`test/`、`script/`，最后是 `src/`。 在每个中，按路径字母顺序排序（而不是按导入的显式命名项）。 _（注意：一旦 [foundry-rs/foundry#3396](https://github.com/foundry-rs/foundry/issues/3396) 合并，这可能会被删除）。_

3. 同样，对命名导入进行排序。 _（注意：一旦 [foundry-rs/foundry#3396](https://github.com/foundry-rs/foundry/issues/3396) 得到解决，这可能会被删除）。_

    - Good：`从“src/MyContract.sol”导入{bar，foo}`
    - Bad：`从“src/MyContract.sol”导入 {foo, bar}`

4. 注意导入的绝对路径和相对路径之间的权衡（绝对路径是相对于 repo 根的，例如`"src/interfaces/IERC20.sol"`），并为您的项目选择最佳方法：

    - 绝对路径可以更轻松地查看文件的来源并减少移动文件时的流失。
    - 相对路径使您的编辑器更有可能提供 linting 和自动完成等功能，因为编辑器/扩展可能无法理解您的重新映射。

5. 如果从依赖项中复制库（而不是导入它），请在配置文件中使用 `ignore = []` 选项以避免格式化该文件。 这使得审阅者和审计员可以更轻松地将其与原始版本进行比较。

6. 同样，随意使用 `// forgefmt: disable-*` 注释指令来忽略手动格式化后看起来更好的代码行/部分。 `*` 支持的值是：

    - `禁用线`
    - `禁用下一行`
    - `禁用下一项`
    - `禁用启动`
    -`禁用结束`

来自 [samsczun](https://twitter.com/samczsun) 的 [How Do You Even Write Secure Code Anyways](https://www.youtube.com/watch?v=Wm3t8Fuiy1E) 谈话的其他最佳实践：

- 使用描述性变量名称。
- 限制活动变量的数量。
- 没有多余的逻辑。
- 尽可能提前退出，减少看到代码时的心理负担。
- 相关代码应彼此靠近放置。
- 删除未使用的代码。

## 测试

### 一般测试指导

1. 为了测试`MyContract.sol`，测试文件应该是`MyContract.t.sol`。 为了测试 `MyScript.s.sol`，测试文件应该是 `MyScript.t.sol`。

    - 如果合约很大并且您想将其拆分为多个文件，请将它们按逻辑分组，如 `MyContract.owner.t.sol`、`MyContract.deposits.t.sol` 等。

1. 永远不要在 `setUp` 函数中做出断言，如果您需要确保 `setUp` 函数执行预期的操作，请使用像 `test_SetUpState()` 这样的专用测试。 有关原因的更多信息，请参见 [foundry-rs/foundry#1291](https://github.com/foundry-rs/foundry/issues/1291)

1. 对于单元测试，组织测试的方式主要有两种：
    1. 将合约视为描述块：
       - `contract Add` 包含 `add` 方法的所有单元测试。
       - `contract Supply` 包含 `supply` 方法的所有测试。
       - `contract Constructor` 保存构造函数的所有测试。
       - 这种方法的一个好处是较小的合约应该比较大的合约编译得更快，因此随着测试套件变大，许多小型合约的这种方法应该可以节省时间。
    2. 每个被测合约都有一个测试合约，其中包含您想要的任意数量的实用程序和固定装置：
       - `contract VaultTest` 测试 `contract Vault`，但它也继承自 `contract BaseTestFixture` 和 `contract TestUtilities`。
       - 测试函数的编写顺序应与被测合约中存在的原始函数相同。
       - 测试同一功能的所有测试功能都应连续存在于测试文件中。
1. 集成测试应该放在同一个 `test` 目录中，并有明确的命名约定。 这些可能位于专用文件中，或者它们可能与现有测试文件中的相关单元测试相邻。

1. 与测试命名保持一致，因为它有助于过滤测试（例如，对于气体报告，您可能希望过滤掉还原测试）。 组合命名约定时，请按字母顺序排列。

    - 用于标准测试的 `test_Description`。
    - `testFuzz_Description` 用于模糊测试。
    - `test_Revert[If|When]_Condition` 用于期望恢复的测试。
    - `testFork_Description` 用于从网络分叉的测试。
    - `testForkFuzz_Revert[If|When]_Condition` 用于分叉并期望恢复的模糊测试。

1. 当使用像 assertEq 这样的断言时，考虑利用最后一个字符串参数来更容易地识别失败。 这些可以保持简短，甚至只是数字——它们基本上可以替代显示还原的行号，例如 `assertEq(x, y, "1")` 或 `assertEq(x, y, "sum1")`。 _（注意：[foundry-rs/foundry#2328](https://github.com/foundry-rs/foundry/issues/2328) 跟踪本地集成）。_

1. 测试事件时，最好将所有 `expectEmit` 参数设置为 `true`，即 `vm.expectEmit(true, true, true, true)`。 好处：

    - 这可确保您测试活动中的所有内容。
    - 如果您添加一个主题（即一个新的索引参数），它现在默认进行测试。
    - 即使你只有 1 个主题，额外的 `true` 论点也没有坏处。

1. 记得写不变测试！ 对于断言字符串，使用不变量的冗长英文描述：`assertEq(x + y, z, "Invariant violated: the sum of x and y must always equal z")`。 有关最佳实践的更多信息即将推出。


### 分叉测试

1. 不要觉得你需要给分叉测试特殊待遇，并自由使用它们：

    - 闭源 web2 开发中_需要_模拟——您必须模拟 API 响应，因为该 API 的代码不是开源的，所以您不能只在本地运行它。 但对于区块链而言，情况并非如此：您正在与之交互的任何已部署代码都可以在本地执行，甚至可以免费修改。 那么，如果不需要，为什么要引入错误模拟的风险呢？
    - 避免分叉测试而更喜欢模拟的一个常见原因是分叉测试很慢。 但这并不总是正确的。 通过固定到一个块号，forge 缓存 RPC 响应，因此只有第一次运行速度较慢，而后续运行速度明显更快。 请参阅[this benchmark](https://github.com/mds1/convex-shutdown-simulation/)，第一次使用远程 RPC 运行需要 7 分钟，但一旦数据被缓存结果只需要半秒。 Alchemy 和 Infura 都提供免费存档数据，因此固定到一个块应该没有问题。 （请注意，您可能需要配置 CI 以缓存运行之间的 RPC 响应）。

1. 小心使用分叉上的模糊测试，以避免使用非确定性模糊测试破坏 RPC 请求。 如果你的分叉模糊测试的输入是一些在 RPC 调用中使用的参数来获取数据（例如查询地址的代币余额），每次运行模糊测试至少使用 1 个 RPC 请求，所以你会很快 命中率限制或使用限制。 要考虑的解决方案：

     - 用单个 [multicall](https://github.com/mds1/multicall) 替换多个 RPC 调用。
     - 指定模糊/不变 [seed](/src/reference/config/testing.md#seed)：这确保每个“伪造测试”调用都使用相同的模糊输入。 RPC 结果缓存在本地，因此您只会在第一次查询节点。
     - 构建您的测试，以便您模糊测试的数据由您的合约在本地计算，而不是 RPC 调用中使用的数据（根据您正在做的事情可能可行也可能不可行）。
     - 最后，您当然可以始终运行本地节点或修改您的 RPC 计划。
1. 编写 fork 测试时，不要使用 `--fork-url` 标志。 相反，更喜欢以下方法，因为它提高了灵活性：

    - 在`foundry.toml`配置文件中定义 `[rpc_endpoints]` 并使用[forking cheatcodes](../forge/fork-testing.md#forking-cheatcodes)。
    - 使用 forge-std 的“stdChains.ChainName.rpcUrl”访问测试中的 RPC URL 端点。 请参阅[此处](https://github.com/foundry-rs/forge-std/blob/ff4bf7db008d096ea5a657f2c20516182252a3ed/src/StdCheats.sol#L255-L271) 的支持链列表和预期的配置文件别名。
    - 始终固定到一个块，以便测试具有确定性并缓存 RPC 响应。
    - 有关此分叉测试方法的更多信息，请参见 [此处](https://twitter.com/msolomon44/status/1564742781129502722)（这早于 `StdChains`，因此该方面有点过时了）。



### 测试工具

#### 内部函数

要测试 `internal` 功能，请编写一个继承自被测合约 (CuT) 的线束合约。 从 CuT 继承的线束合约将 `internal` 功能公开为 `external` 功能。

每个被测试的 `internal` 函数都应该通过一个名称遵循 `exposed_<function_name>` 模式的外部函数公开。 例如：

```solidity
// file: src/MyContract.sol
contract MyContract {
  function myInternalMethod() internal returns (uint) {
    return 42;
  }
}

// file: test/MyContract.t.sol
import {MyContract} from "src/MyContract.sol";

contract MyContractHarness is MyContract {
  // Deploy this contract then cll this method to test `myInternalMethod`.
  function exposed_myInternalMethod() external returns (uint) {
    return myInternalMethod();
  }
}
```

#### 私有函数

不幸的是，目前没有好的方法来对 `private`方法进行单元测试，因为它们不能被任何其他合约访问。 选项包括：

- 将 `private` 函数转换为 `internal` 。
- 将逻辑复制/粘贴到您的测试合约中，并编写一个在 CI 检查中运行的脚本，以确保两个功能相同。

#### Workaround函数

Harnesses 还可用于公开原始智能合约中不可用的功能或信息。 最直接的例子是当我们想要测试公共数组的长度时。 这些函数应遵循以下模式：`workaround_<function_name>`，例如 `workaround_queueLength()`。

另一个用例是跟踪您不会在生产中跟踪的数据，以帮助测试不变量。 例如，您可以存储所有代币持有者的列表，以简化不变的“所有余额的总和必须等于总供应量”的验证。 这些通常被称为“幽灵变量”。 您可以在 [Rikard Hjort](https://twitter.com/rikardhjort) 的 [工作 DeFi 开发的正式方法](https://youtu.be/TiuEWMo6w8U?t=3142) 演讲中了解更多相关信息。

### 最佳实践

感谢 [@samsczun](https://twitter.com/samczsun) 的 [How Do You Even Write Secure Code Anyways](https://www.youtube.com/watch?v=Wm3t8Fuiy1E) 讨论技巧 在本节和下一节中。

- 不要针对覆盖范围进行优化，而是针对经过深思熟虑的测试进行优化。
- 编写正面和负面的单元测试。
   - 为代码应该处理的事情编写_positive_单元测试。 验证从这些测试中更改的_all_状态。
   - 为代码不应该处理的事情编写_negative_ 单元测试。 跟进（作为相邻测试）阳性测试并进行需要通过的更改很有帮助。
   - 每个代码路径都应该有自己的单元测试。
- 编写集成测试来测试整个功能。
- 编写分叉测试以验证现有已部署合约的正确行为。

### 污点分析

测试时，您应该优先考虑攻击者可以影响的功能，即接受某种用户输入的功能。 这些被称为_sources_。

将输入数据视为_污染_，直到它被代码检查过，此时它被认为是_干净_。

_sink_ 是发生某些重要操作的代码的一部分。 例如，在 MakerDAO 中，它将是`vat.sol`。

您应该_确保_没有_污染_数据到达_接收器_。 这意味着所有发现自己在接收器中的数据都应该在某个时候由您检查过。 因此，您需要定义数据_应该_是什么，然后确保您的检查_确保_数据符合您的预期。

## 脚本

1. 为清晰起见，坚持使用 `run` 作为默认函数名称。

1. 任何不打算在脚本中直接调用的方法都应该是 `internal` 或 `private`。 一般来说，唯一的公共方法应该是 `run`，因为当每个脚本文件只做一件事时，它更容易阅读/理解。

1. 考虑根据脚本在协议生命周期中的运行顺序为脚本添加前缀。 例如，`01_Deploy.s.sol`、`02_TransferOwnership.s.sol`。 这使事情更加自我记录。 这可能并不总是适用，具体取决于您的项目。

1. 测试你的脚本。

    - 通过编写测试来对它们进行单元测试，这些测试断言运行脚本所做的状态更改。
    - 通过运行该脚本编写您的部署脚本和脚手架测试。 然后，针对生产部署脚本产生的状态运行所有测试。 这是获得对部署脚本的信心的好方法。

1. **仔细审核广播了哪些交易**。 未广播的事务仍在测试上下文中执行，因此缺少广播或额外广播很容易成为上一步中的错误来源。

1. **注意抢跑**。 Forge 模拟您的脚本，根据模拟结果生成交易数据，然后广播交易。 确保您的脚本对模拟和广播之间的链状态变化具有鲁棒性。 下面是一个容易受到此影响的示例脚本：

```solidity
// Pseudo-code, may not compile.
contract VulnerableScript is Script {
   function run() public {
      vm.startBroadcast();

      // Transaction 1: Deploy a new Gnosis Safe with CREATE.
      // Because we're using CREATE instead of CREATE2, the address of the new
      // Safe is a function of the nonce of the gnosisSafeProxyFactory.
      address mySafe = gnosisSafeProxyFactory.createProxy(singleton, data);

      // Transaction 2: Send tokens to the new Safe.
      // We know the address of mySafe is a function of the nonce of the
      // gnosisSafeProxyFactory. If someone else deploys a Gnosis Safe between
      // the simulation and broadcast, the address of mySafe will be different,
      // and this script will send 1000 DAI to the other person's Safe. In this
      // case, we can protect ourselves from this by using CREATE2 instead of
      // CREATE, but every situation may have different solutions.
      dai.transfer(mySafe, 1000e18);

      vm.stopBroadcast();
   }
}
```

1. 对于从 JSON 输入文件读取的脚本，将输入文件放在 `script/input/<chainID>/<description>.json` 中。 然后将 `run(string memory input)`（如果需要读取多个文件，则采用多个字符串输入）作为脚本的签名，并使用以下方法读取 JSON 文件。

```solidity
function readInput(string memory input) internal returns (string memory) {
  string memory inputDir = string.concat(vm.projectRoot(), "/script/input/");
  string memory chainDir = string.concat(vm.toString(block.chainid), "/");
  string memory file = string.concat(input, ".json");
  return vm.readFile(string.concat(root, chainInputFolder, input));
}
```

## 注释

1. 对于公共或外部方法和变量，使用[NatSpec](https://docs.soliditylang.org/en/latest/natspec-format.html)注释。

    - `forge doc` 将解析这些以自动生成文档。
    - Etherscan 将在合约 UI 中显示它们。

1. 对于简单的 NatSpec 注释，考虑只在文档字符串中记录参数，例如 `` /// @notice 返回 `x` 和 `y` 的总和。 ``，而不是使用 `@param` 标签。

1. 对于复杂的 NatSpec 注释，考虑使用像 [PlantUML](https://plantuml.com/ascii-art) 这样的工具来生成 ASCII 艺术图，以帮助解释代码库的复杂方面。

1. 当使用 `forge doc` 生成文档时，您评论中的任何 markdown 都将正确保留，因此在有用时使用 markdown 结构评论。

    - 好：`` /// @notice 返回 `x` 和 `y` 的总和。 ``
    - 错误：`/// @notice 返回 x 和 y 的总和。`

## 资源

编写更安全的代码和更好的测试：

- [transmissions11/solcurity](https://github.com/transmissions11/solcurity)
- [nascentxyz/simple-security-toolkit](https://github.com/nascentxyz/simple-security-toolkit)

Foundry在行动：

- [Nomad Monorepo](https://github.com/nomad-xyz/monorepo)：所有 `contracts-*` 包。 使用许多 Foundry 功能的好例子，包括模糊测试、`ffi` 和各种作弊代码。
- [Uniswap Periphery](https://github.com/gakonst/v3-periphery-foundry)：使用继承来隔离测试装置的好例子。
- [awesome-foundry](https://github.com/crisgarner/awesome-foundry)：精选的 Foundry 开发框架列表。
