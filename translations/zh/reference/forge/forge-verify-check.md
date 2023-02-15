## forge verify-check

### 名称

forge-verify-check - Check verification status on a chosen verification provider.

### 简介

``forge verify-check`` [*options*] *id* [*etherscan_key*]

The *id* is the verification identifier. For Etherscan & Bloxroute - it is the submission GUID, for Sourcify - it's the contract address.

### 描述

Check verification status on a chosen verification provider.

For Etherscan, you must provide an Etherscan API key, either by passing it as an argument or setting `ETHERSCAN_API_KEY`

### 选项

#### Verify Contract Options

{{#include ../common/verifier-options.md}}

`--chain-id` *chain_id*  
&nbsp;&nbsp;&nbsp;&nbsp;The chain ID the contract is deployed to (either a number or a chain name).  
&nbsp;&nbsp;&nbsp;&nbsp;Default: mainnet

{{#include ../common/retry-options.md}}

{{#include common-options.md}}

### 另请参阅

[forge](./forge.md), [forge create](./forge-create.md), [forge verify-contract](./forge-verify-contract.md)
