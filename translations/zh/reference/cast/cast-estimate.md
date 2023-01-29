## cast estimate

### 名称

cast-estimate - 估算交易的 Gas 成本。

### 简介

``cast estimate`` [*options*] *to* *sig* [*args...*]

### 描述

估算交易的 Gas 成本。

目的地（*to*）可以是 ENS 名称或地址。

{{#include sig-description.md}}

### 可选

#### Transaction 选项

{{#include ../common/tx-value-option.md}}

{{#include ../common/rpc-options.md}}

{{#include ../common/etherscan-options.md}}

{{#include common-options.md}}

### 例子

1. Estimate the gas cost of calling `deposit()` on the WETH contract:
    ```sh
    cast estimate 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2 \
      --value 0.1ether "deposit()"
    ```

### 请参阅

[cast](./cast.md), [cast send](./cast-send.md), [cast publish](./cast-publish.md), [cast receipt](./cast-receipt.md)
