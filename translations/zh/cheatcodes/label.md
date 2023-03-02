## `label`

### 签名

```solidity
function label(address addr, string calldata label) external;
```

### 描述

为测试跟踪中的地址设置标签。

如果一个地址被贴上标签，在测试的trace中将使用标签来代替地址进行显示(从而提高可读性)。



### 示例

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "forge-std/Test.sol";
import "../src/interfaces/IERC20.sol";

contract MyTest is Test {
    IERC20 DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    function setUp() public {
        vm.createSelectFork("https://rpc.ankr.com/eth");
        vm.label(address(DAI), "DAI");
    }

    function test1() public view {
        console2.log(DAI.decimals());
    }
}

```

```
Traces:
  [8354] MyTest::test1() 
    ├─ [240] DAI::decimals() [staticcall]  // <== 这里使用了DAI标签而不是地址
    │   └─ ← 0x0000000000000000000000000000000000000000000000000000000000000012
    ├─ [0] console::log(18) [staticcall]
    │   └─ ← ()
    └─ ← ()

```

