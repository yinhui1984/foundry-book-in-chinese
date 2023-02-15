## forge tree

### 名称

forge-tree - Display a tree visualization of the project's dependency graph.

### 简介

``forge tree`` [*options*]

### 描述

Display a visualization of the project's dependency graph.

```ignore
{{#include ../../output/forge_tree/forge-tree:all}}
```

### 选项

#### Flatten Options

`--charset` *charset*  
&nbsp;&nbsp;&nbsp;&nbsp;Character set to use in output: utf8, ascii. Default: utf8

`--no-dedupe`  
&nbsp;&nbsp;&nbsp;&nbsp;Do not de-duplicate (repeats all shared dependencies)

{{#include project-options.md}}

{{#include common-options.md}}

### 另请参阅

[forge](./forge.md)
