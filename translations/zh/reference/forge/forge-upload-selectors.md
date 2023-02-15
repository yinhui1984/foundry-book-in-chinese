## forge upload-selectors

### 名称

forge-upload-selectors - 将给定合约的 ABI 上传至 https://sig.eth.samczsun.com 函数选择器数据库。

### 简介

``forge upload-selectors`` [*options*] *contract*

### 描述

将给定合约的 ABI 上传至 https://sig.eth.samczsun.com 函数选择器数据库。

### 选项

{{#include project-options.md}}

{{#include common-options.md}}

### 例子

1. 上传 ABI 到函数选择器数据库：
    ```sh
    forge upload-selectors LinearVestingVault
    ```