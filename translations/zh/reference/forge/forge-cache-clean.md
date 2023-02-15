## `forge cache clean`

### 名称

forge-cache-clean - 清除 `~/.foundry` 中的缓存数据。

### 简介

`forge cache clean` [*options*] [*--*] [*chains..*]

### 描述

删除 `~/.foundry/cache` 文件夹中的文件，该文件夹用于缓存 Etherscan 验证状态和块数据。

### 选项

`-b`  
`--blocks`  
&nbsp;&nbsp;&nbsp;&nbsp;一个或多个区块号码，用逗号分隔，没有空格。

`--etherscan`
&nbsp;&nbsp;&nbsp;&nbsp;一个布尔标志，指定只删除缓存中的区块浏览器部分。

{{#include common-options.md}}

### 例子

1. 删除整个缓存（另外，`forge cache clean` 是它的一个别名）。

   ```sh
   forge cache clean all
   ```

2. 删除整个区块浏览器的缓存

   ```sh
   forge cache clean all --etherscan
   ```

3. 按名称删除特定链的缓存数据

   ```sh
   forge cache clean rinkeby
   ```

4. 删除特定链上的特定区块号码的缓存数据。如果 `chain` 是 `all`，则不起作用。

   ```sh
   forge cache clean rinkeby -b 150000
   ```

5. 删除特定链的区块浏览器缓存数据。如果指定了 `--blocks`，则不工作。

   ```sh
   forge cache clean rinkeby --etherscan
   ```

6. 指定多条链

   ```sh
   forge cache clean rinkeby mainnet
   ```

7. 指定多个区块
   ```sh
   forge cache clean rinkeby --blocks 530000,9000000,9200000
   ```

### 另请参阅
[forge](./forge.md), [forge cache](./forge-cache.md)
