## Etherscan

与 Etherscan 相关的配置，如 API 密钥。 这个配置被 Forge 用在各个地方。

`[etherscan]` 部分是密钥与 Etherscan 配置表的映射。Etherscan配置表持有以下密钥：

- `key` (字符串) (**必须**): 给定网络的 Etherscan API 密钥。这个属性的值也可以指向一个环境变量。
- `chain`: 该 Etherscan 配置的链的名称或 ID。
- `url`: Etherscan的 API URL。

如果配置的 key 是一个链的名称，那么就不需要 `chain`，否则就需要。`url` 可以用来为不支持名称的链明确设置 Etherscan API URL。

使用 TOML 内联表语法，所有这些都是有效的:

```toml
[etherscan]
mainnet = { key = "${ETHERSCAN_MAINNET_KEY}" }
mainnet2 = { key = "ABCDEFG", chain = "mainnet" }
optimism = { key = "1234567" }
unknown_chain = { key = "ABCDEFG", url = "<etherscan api url for this chain>" }
```
