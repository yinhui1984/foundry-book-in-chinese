## cast wallet vanity

### 名称

cast-wallet-vanity - 生成一个虚构的地址。

### 简介

``cast wallet vanity`` [*options*]

### 描述

生成一个虚假的地址。

如果指定了 `--nonce`，那么命令将尝试生成一个虚构的合约地址。

### 可选

#### Keystore 选项

`--starts-with` *hex*  
&nbsp;&nbsp;&nbsp;&nbsp;虚构地址的前缀

`--ends-with` *hex*  
&nbsp;&nbsp;&nbsp;&nbsp;虚构地址的后缀

`--nonce` *nonce*  
&nbsp;&nbsp;&nbsp;&nbsp;用指定的 nonce 生成一个由生成的密钥对创建的虚构合约地址。

{{#include common-options.md}}

### 例子

1. 创建一个以 `dead` 开头的新密钥对：
    ```sh
    cast wallet vanity --starts-with dead
    ```

2. 创建一个以 `beef` 结尾的新密钥对：
    ```sh
    cast wallet vanity --ends-with beef
    ```

### 请参阅

[cast](./cast.md), [cast wallet](./cast-wallet.md)
