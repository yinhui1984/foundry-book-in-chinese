## forge completions

### 名称

forge-completions - 生成 shell 自动补全脚本

### 简介

``forge completions`` *shell*

### 描述

为给定的 shell 生成一个 shell 自动补全脚本。

支持的 shells 为：

- bash
- elvish
- fish
- powershell
- zsh

### 选项

{{#include common-options.md}}

### 例子

1. 为 zsh 生成 shell 自动补全脚本。
    ```sh
    forge completions zsh > $HOME/.oh-my-zsh/completions/_forge
    ```

### 另请参阅

[forge](./forge.md)
