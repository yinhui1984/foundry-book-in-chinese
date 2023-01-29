## cast wallet address

### 名称

cast-wallet-address - 将一个私钥转换为一个地址。

### 简介

``cast wallet address`` [*options*]

### 描述

将一个私钥转换为一个地址。

### 可选

#### Keystore 选项

{{#include ../common/wallet-options-raw.md}}

{{#include ../common/wallet-options-keystore.md}}

{{#include ../common/wallet-options-hardware.md}}

{{#include common-options.md}}

### 例子

1. 获取 `keystore.json` 中密钥对的地址：
    ```sh
    cast wallet address --keystore keystore.json
    ```

### 请参阅

[cast](./cast.md), [cast wallet](./cast-wallet.md)
