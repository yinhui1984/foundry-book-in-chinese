## forge tree

### 名称

forge-tree - 显示项目的树状可视化的依赖关系图。

### 简介

``forge tree`` [*options*]

### 描述

显示项目的可视化依赖关系图。

```ignore
{{#include ../../output/forge_tree/forge-tree:all}}
```

### 选项

#### Flatten 选项

`--charset` *charset*  
&nbsp;&nbsp;&nbsp;&nbsp;输出中使用的字符集：utf8，ascii。 默认：utf8

`--no-dedupe`  
&nbsp;&nbsp;&nbsp;&nbsp;不要去重复（重复所有共享的依赖关系）。

{{#include project-options.md}}

{{#include common-options.md}}

### 另请参阅

[forge](./forge.md)
