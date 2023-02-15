## forge update

### 名称

forge-update - Update one or more dependencies.

### 简介

``forge update`` [*options*] [*dep*]

### 描述

Update one or more dependencies.

The argument *dep* is a path to the dependency you want to update.
Forge will update to the latest version on the ref you specified for the dependency when you ran [`forge install`](./forge-install.md).

If no argument is provided, then all dependencies are updated.

### 选项

{{#include common-options.md}}

### 例子

1. Update a dependency:
    ```sh
    forge update lib/solmate
    ```

2. Update all dependencies:
    ```sh
    forge update
    ```

### 另请参阅

[forge](./forge.md), [forge install](./forge-install.md), [forge remove](./forge-remove.md)
