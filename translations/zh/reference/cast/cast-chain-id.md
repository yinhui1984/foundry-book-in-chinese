## cast chain-id

### 名称

cast-chain-id - 获取 Ethereum 的链 ID。

### 简介

``cast chain-id`` [*options*]

### 描述

从连接的 RPC 端点获取 Ethereum 的 [链 ID][chain-id]。

### 可选

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 与 `$RPC` 对话时，获取链 ID：
    ```sh
    cast chain-id --rpc-url $RPC
    ```

2. 当 `$ETH_RPC_URL` 被设置时，获取链 ID。
    ```sh
    cast chain-id
    ```

### 请参阅

[cast](./cast.md), [cast chain](./cast-chain.md)

[chain-id]: https://chainlist.org/
