## `arithmeticError`

### 签名

```solidity
stdError.arithmeticError
```

### 描述

当算术运算失败时，Solidity 内部的错误，例如下溢和溢出。

### 例子

假设我们有一个基本的金库合同，可以存储一些代币（`wmdToken`）。

```solidity
contract BasicVault {

    IERC20 public immutable wmdToken;   
    mapping(address => uint) public balances;

    event Deposited(address indexed from, uint amount);
    event Withdrawal(address indexed from, uint amount);

    constructor(IERC20 wmdToken_){
        wmdToken = wmdToken_;
    }

    function deposit(uint amount) external {    
        balances[msg.sender] += amount;
        bool success = wmdToken.transferFrom(msg.sender, address(this), amount);
        require(success, "Deposit failed!"); 
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint amount) external {      
        balances[msg.sender] -= amount;
        bool success = wmdToken.transfer(msg.sender, amount);
        require(success, "Withdrawal failed!");
        emit Withdrawal(msg.sender, amount);
    }
}
```

我们有一个测试功能，确保用户无法提取超过其存款的代币，像这样：

```solidity
    function testUserCannotWithdrawExcessOfDeposit() public {
        vm.prank(user);
        vm.expectRevert(stdError.arithmeticError);
        vault.withdraw(userTokens + 100*10**18);
    }
```

1. 用户有数额为 `userTokens` 的代币存放在 Vault 合约中。
2. 用户试图提取超过其存款数额的代币。
3. 这导致了一个下溢错误，其原因是：`balances[msg.sender] -= amount;`，因为它将计算为一个负值。

为了捕捉 "算术溢出/下溢" 的错误，我们在预计会导致下溢的函数调用之前插入 `vm.expectRevert(stdError.arithmeticError)`。
