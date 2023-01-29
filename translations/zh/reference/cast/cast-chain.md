## cast chain

### 名称

cast-chain - 获取当前链的名称。

### 简介

``cast chain`` [*options*]

### 描述

从我们所连接的 RPC 端点获取链的名称。

### 可选

#### RPC 选项

{{#include ../common/rpc-url-option.md}}

{{#include common-options.md}}

### 例子

1. 与 `$RPC` 对话时，获取链的名称：
    ```sh
    cast chain --rpc-url $RPC
    ```

2. 当 `$ETH_RPC_URL` 被设置时，获取链的名称。
    ```sh
    cast chain
    ```

### 请参阅

[cast](./cast.md), [cast chain-id](./cast-chain-id.md)
