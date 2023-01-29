## cast 4byte-event

### 名称

cast-4byte-event - 从 <https://sig.eth.samczsun.com> 中获取 topic 0 的事件签名。

### 简介

``cast 4byte-event`` [*options*] *topic_0*

### 描述

从 <https://sig.eth.samczsun.com> 中获取 topic 0 的事件签名。

### 可选

{{#include common-options.md}}

### 例子

1. 获取一个 topic 0 的事件签名。`0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef`:
    ```sh
    cast 4byte-event 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
    ```

### 请参阅

[cast](./cast.md), [cast 4byte](./cast-4byte.md), [cast 4byte-decode](./cast-4byte-decode.md)
