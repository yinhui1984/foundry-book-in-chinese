#### 缓存选项

`--force`  
&nbsp;&nbsp;&nbsp;&nbsp;清除缓存和 artifacts 文件夹并重新编译。

#### 链接器选项

`--libraries` *libraries*  
&nbsp;&nbsp;&nbsp;&nbsp;设置预链接库。

&nbsp;&nbsp;&nbsp;&nbsp;参数的格式必须是 `<remapped path to lib>:<library name>:<address>`，例如 `src/Contract.sol:Library:0x...`。

&nbsp;&nbsp;&nbsp;&nbsp;也可以在你的配置文件中设置为 `libraries = ["<path>:<lib name>:<address>"]`.

{{#include compiler-options.md}}

{{#include project-options.md}}

`-o` *path*  
`--out` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;项目的 artifacts 目录。

`--silent`   
&nbsp;&nbsp;&nbsp;&nbsp;抑制所有输出。
