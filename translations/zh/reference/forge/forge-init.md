## forge init

### 名称

forge-init - 创建一个新的 Forge 项目。

### 简介

``forge init`` [*options*] [*root*]

### 描述

在 *root* 目录下（默认为当前工作目录）创建一个新的 Forge 项目。

默认模板创建了以下项目布局。

```ignore
{{#include ../../output/hello_foundry/tree-with-files:output}}
```

然而，可以使用 `--template` 从另一个项目创建一个项目。

默认情况下，`forge init` 也会初始化一个新的 git 仓库，安装一些子模块并创建一个初始提交信息。

如果你不想要这种行为，请传递 `--no-git`。

### 选项

#### 初始化选项

`--force`  
&nbsp;&nbsp;&nbsp;&nbsp;即使指定的根目录不是空的，也要创建该项目。

`-t` *template*  
`--template` *template*  
&nbsp;&nbsp;&nbsp;&nbsp;从模板开始。

`--vscode`  
&nbsp;&nbsp;&nbsp;&nbsp;用 Solidity 设置创建一个 `.vscode/settings.json` 文件，并生成一个 `remappings.txt` 文件。

`--offline`  
&nbsp;&nbsp;&nbsp;&nbsp;不要从网络上安装依赖。

#### VCS Options

`--no-commit`  
&nbsp;&nbsp;&nbsp;&nbsp;不要创建初始提交。

`--no-git`  
&nbsp;&nbsp;&nbsp;&nbsp;不要创建一个 git 仓库。

#### Display Options

`-q`  
`--quiet`  
&nbsp;&nbsp;&nbsp;&nbsp;不要打印任何信息。

{{#include common-options.md}}

### 例子

1. 创建一个新的项目：
    ```sh
    forge init hello_foundry
    ```

2. 创建一个新的项目，但不要创建一个 git 仓库：
    ```sh
    forge init --no-git hello_foundry
    ```

3. 在一个非空目录强制创建一个新的项目：
    ```sh
    forge init --force 
    ```

### 另请参阅

[forge](./forge.md)
