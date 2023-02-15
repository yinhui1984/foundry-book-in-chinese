## forge install

### 名称

forge-install - 安装一个或多个依赖。

### 简介

``forge install`` [*options*] [*deps...*]

### 描述

安装一个或多个依赖。

依赖项被安装为 git 子模块。如果你不想要这种行为，请传递 `--no-git`。

如果没有提供参数，那么就会安装现有的依赖。

依赖关系可以是一个原始的 URL（`https://foo.com/dep`），一个 SSH URL（`git@github.com:owner/repo`），或者一个 GitHub 仓库的路径（`owner/repo`）。
此外，可以在依赖路径中添加一个 ref，以安装一个依赖的特定版本。

一个 ref 可以是:

- 一个分支: `owner/repo@master`
- 一个标签: `owner/repo@v1.2.3`
- 一个提交: `owner/repo@8e8128`

默认的 ref 为 `master`.

你也可以选择依赖关系所在的文件夹名称。默认情况下，文件夹的名称是版本库的名称。如果你想改变文件夹的名称，请在依赖项前加上 `<folder>=`。

### 选项

#### 项目选项

`--root` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;项目的根路径。默认情况下，这是当前 git 仓库的根目录，或当前工作目录。

#### VCS 选项

`--no-commit`  
&nbsp;&nbsp;&nbsp;&nbsp;不要创建一个提交。

`--no-git`  
&nbsp;&nbsp;&nbsp;&nbsp;安装时不需要将依赖关系作为一个子模块添加。

#### 显示选项

`-q`  
`--quiet`  
&nbsp;&nbsp;&nbsp;&nbsp;不要打印任何信息。

{{#include common-options.md}}

### 例子

1. 安装一个依赖：
    ```sh
    forge install transmissions11/solmate
    ```

2. 安装一个指定版本的依赖：
    ```sh
    forge install transmissions11/solmate@v7
    ```

3. 安装多个依赖：
    ```sh
    forge install transmissions11/solmate@v7 OpenZeppelin/openzeppelin-contracts
    ```

4. 安装一个依赖而不创建一个子模块：
    ```sh
    forge install --no-git transmissions11/solmate
    ```

5. 在指定的目录安装依赖：
    ```sh
    forge install soulmate=transmissions11/solmate
    ```

### 另请参阅

[forge](./forge.md), [forge update](./forge-update.md), [forge remove](./forge-remove.md)
