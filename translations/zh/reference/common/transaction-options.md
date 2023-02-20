#### Transaction Options

`--gas-limit` *gas_limit*  
&nbsp;&nbsp;&nbsp;&nbsp;交易的 Gas 限制。

`--gas-price` *price*  
&nbsp;&nbsp;&nbsp;&nbsp;交易的 Gas 价格，或 EIP1559 交易的每个 Gas 的最大费用。

`--priority-gas-price` *price*  
&nbsp;&nbsp;&nbsp;&nbsp;EIP1559 交易的每个 Gas 的最高优先费。

{{#include ../common/tx-value-option.md}}

`--nonce` *nonce*  
&nbsp;&nbsp;&nbsp;&nbsp;交易的Nonce。

`--legacy`  
&nbsp;&nbsp;&nbsp;&nbsp;发送一个传统交易而不是 [EIP1559][eip1559] 交易。

&nbsp;&nbsp;&nbsp;&nbsp;对于没有 EIP1559 的普通网络，这将自动启用。

[eip1559]: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1559.md
