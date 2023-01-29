## cast call

### 名称

cast-call - 在不发布交易的情况下对一个账户进行调用。

### 简介

``cast call`` [*options*] *to* *sig* [*args...*]

### 描述

在不发布交易的情况下对一个账户进行调用。

目的地（*to*）可以是 ENS 名称或地址。

{{#include sig-description.md}}

### 可选

#### 查询选项

`-B` *block*  
`--block` *block*  
&nbsp;&nbsp;&nbsp;&nbsp;你想查询的区块高度。

&nbsp;&nbsp;&nbsp;&nbsp;可以是一个区块编号，或任何一个标签:  `earliest`, `latest` 或者 `pending`.

{{#include ../common/wallet-options.md}}

{{#include ../common/rpc-options.md}}

{{#include ../common/etherscan-options.md}}

{{#include common-options.md}}

### 例子

1. 在 WETH 合约上调用 `balanceOf(address)`：

    ```sh
    cast call 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2 \
      "balanceOf(address)(uint256)" 0x...
    ```

2. 在 Tubby Cats NFT 合约上调用 `tokenURI(uint256)(string)`：

    ```sh
    export CONTRACT=0xca7ca7bcc765f77339be2d648ba53ce9c8a262bd
    export TOKEN_ID=19938
    cast call $CONTRACT "tokenURI(uint256)(string)" $TOKEN_ID
   ```

3. 在 Uniswap v2 router 合约上调用 ``getAmountsOut(uint,address[])``：

    ```sh
   cast call 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D \
     "getAmountsOut(uint,address[])" 1 "[0x6b...0f,0xc0...c2]"
    ```

### 请参阅

[cast](./cast.md), [cast send](./cast-send.md), [cast publish](./cast-publish.md), [cast receipt](./cast-receipt.md)
