## `stopPrank`

### Signature

```solidity
function stopPrank() external;
```

### Description

停止由[`startPrank`](./start-prank.md)启动的作弊，将`msg.sender`和`tx.origin`重置为调用`startPrank`之前的值。
