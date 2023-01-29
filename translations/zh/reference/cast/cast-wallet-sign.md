## cast wallet sign

### 名称

cast-wallet-sign - 签署消息。

### 简介

``cast wallet sign`` [*options*] *message*

### 描述

签署消息。

### 可选

{{#include ../common/wallet-options-raw.md}}

{{#include ../common/wallet-options-keystore.md}}

{{#include ../common/wallet-options-hardware.md}}

{{#include common-options.md}}

### 例子

1. 使用助记词签署信息：
    ```sh
    cast wallet sign --keystore keystore.json --interactive "hello"
    ```

2. 使用私钥签署信息：
    ```sh
    cast wallet sign --private-key $PRIV_KEY "hello"
    ```

### 请参阅

[cast](./cast.md), [cast wallet](./cast-wallet.md)
