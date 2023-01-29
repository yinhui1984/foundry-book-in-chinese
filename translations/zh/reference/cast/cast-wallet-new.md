## cast wallet new

### 名称

cast-wallet-new - 创建一个新的随机密钥对。

### 简介

``cast wallet new`` [*options*] [*path*]

### 描述

创建一个新的随机密钥对。

如果 *path* 被指定，那么新的密钥对将被写入一个用密码加密的JSON密钥库。
(*path* 应该是一个现有的目录)。

### 可选

#### Keystore 选项

`-p`  
`--password`  
&nbsp;&nbsp;&nbsp;&nbsp;触发 JSON 密钥库的隐藏密码提示。
&nbsp;&nbsp;&nbsp;&nbsp;**已经过时：提示隐藏密码现在是默认的。**

`--unsafe-password` *password*  
&nbsp;&nbsp;&nbsp;&nbsp;JSON 密钥库的明文密码。

&nbsp;&nbsp;&nbsp;&nbsp;这是 **不安全的**，我们建议使用 `--password` 来代替。 
&nbsp;&nbsp;&nbsp;&nbsp;环境变量: `CAST_PASSWORD`

{{#include common-options.md}}

### 例子

1. 创建一个新的密钥对，而不把它保存到密钥库中。
    ```sh
    cast wallet new
    ```

2. 创建一个新的密钥对并将其保存在 `keystore` 目录下。
    ```sh
    cast wallet new keystore
    ```

### 请参阅

[cast](./cast.md), [cast wallet](./cast-wallet.md)
