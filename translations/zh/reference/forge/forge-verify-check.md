## forge verify-check

### 名称

forge-verify-check - 检查所选验证 provider 的验证状态。

### 简介

``forge verify-check`` [*options*] *id* [*etherscan_key*]

*id* 是验证标识符。对于 Etherscan 和 Bloxroute，它是提交的 GUID，对于 Sourcify，它是合约地址。

### 描述

检查所选验证 provider 的验证状态。

对于 Etherscan，你必须提供一个 Etherscan 的 API 密钥，可以把它作为一个参数传递，或者设置 `ETHERSCAN_API_KEY`。

### 选项

#### 验证合约选项

{{#include ../common/verifier-options.md}}

`--chain-id` *chain_id*  
&nbsp;&nbsp;&nbsp;&nbsp;合约被部署到的链ID（可以是数字或链名）。
&nbsp;&nbsp;&nbsp;&nbsp;默认：mainnet

{{#include ../common/retry-options.md}}

{{#include common-options.md}}

### 另请参阅

[forge](./forge.md), [forge create](./forge-create.md), [forge verify-contract](./forge-verify-contract.md)
