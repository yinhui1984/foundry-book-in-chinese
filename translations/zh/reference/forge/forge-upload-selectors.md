## forge upload-selectors

### 名称

forge-upload-selectors - Uploads abi of given contract to https://sig.eth.samczsun.com function selector database.

### 简介

``forge upload-selectors`` [*options*] *contract*

### 描述

Uploads abi of given contract to https://sig.eth.samczsun.com function selector database.

### 选项

{{#include project-options.md}}

{{#include common-options.md}}

### 例子

1. Upload ABI to selector database
    ```sh
    forge upload-selectors LinearVestingVault
    ```