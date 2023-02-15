## forge remappings

### 名称

forge-remappings - 获取项目的自动推断的重映射。

### 简介

``forge remappings`` [*options*]

### 描述

获取项目的自动推断的重映射。

### 选项

#### 项目选项

`--root` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;项目的根路径。默认情况下，这是当前 git 仓库的根目录，或当前工作目录。

`--lib-path` *path*  
&nbsp;&nbsp;&nbsp;&nbsp;库文件夹的路径。

{{#include common-options.md}}

### 例子

1. 从推断出的重映射中创建一个 `remappings.txt` 文件。
    ```sh
    forge remappings > remappings.txt
    ```

### 另请参阅

[forge](./forge.md)
