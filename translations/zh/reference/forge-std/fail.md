## `fail`

### 签名

```solidity
function fail(string memory err) internal virtual;
```

### 描述

如果命中某个分支或执行点，则测试失败，并发出消息。

### 例子

```solidity
function test() external {
    for(uint256 place; place < 10; ++i){
        if(game.leaderboard(place) == address(this)) return;
    }
    fail("Not in the top 10.");
}
```