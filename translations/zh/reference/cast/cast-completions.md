## cast completions

### 名称

cast-completions - 生成 shell 自动补全脚本

### 简介

``cast completions`` *shell*

### 描述

生成 shell 自动补全脚本

支持下列的 shells：

- bash
- elvish
- fish
- powershell
- zsh

### 可选

{{#include common-options.md}}

### 例子

1. 为 zsh 生成 shell 补全脚本。
    ```sh
    cast completions zsh > $HOME/.oh-my-zsh/completions/_cast
    ```

### 请参阅

[cast](./cast.md)
