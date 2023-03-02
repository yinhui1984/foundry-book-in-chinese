## `createSelectFork`

### 签名

```solidity
function createSelectFork(string calldata urlOrAlias) external returns (uint256);
```

```solidity
function createSelectFork(string calldata urlOrAlias, uint256 block) external returns (uint256);
```

### 描述

从给定的端点创建_和_选择一个新的分叉，并返回该分叉的标识符。如果一个区块号码作为参数被传递，那么分叉将从该区块开始，否则它将从_最新的区块开始。

### 示例

创建并选择一个具有最新区块编号的新主网分叉:

```solidity
uint256 forkId = vm.createSelectFork(MAINNET_RPC_URL);

assertEq(block.number, 15_171_037); // as of time of writing, 2022-07-19 04:55:27 UTC
```

创建并选择一个具有给定区块编号的新主网分叉:

```solidity
uint256 forkId = vm.createSelectFork(MAINNET_RPC_URL, 1_337_000);

assertEq(block.number, 1_337_000);
```



> 译者注:
>
> 除了直接传递RPC_URL字符串参数外, 更一般的做法是:
>
> 1. 在`foundry.toml`中指定`rpc_endpoints`, 比如
>
>    ```toml
>    rpc_endpoints = { mainnet = "https://rpc.ankr.com/eth", optimism = "https://rpc.ankr.com/optimism"}
>    ```
>
> 2. 然后在代码中直接使用配置文件中的rpc名称
>
>    ```solidity
>    // fork主网
>    vm.createSelectFork("mainnet", 15_327_706); 
>    ```
>
>    



### SEE ALSO

- [createFork](./create-fork.md)
- [selectFork](./select-fork.md)
