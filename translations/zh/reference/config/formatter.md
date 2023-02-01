## Formatter

与 Forge 格式化器的行为有关的配置。关键都在 `[fmt]` 部分。

##### `line_length`

- 类型: number
- 默认值: 120
- 环境变量: `FOUNDRY_FMT_LINE_LENGTH` or `DAPP_FMT_LINE_LENGTH`

指定格式化程序尝试换行的最大行长。

##### `tab_width`

- 类型: number
- 默认值: 4
- 环境变量: `FOUNDRY_FMT_TAB_WIDTH` or `DAPP_FMT_TAB_WIDTH`

每个缩进级别的空格数。

##### `bracket_spacing`

- 类型: bool
- 默认值: false
- 环境变量: `FOUNDRY_FMT_BRACKET_SPACING` or `DAPP_FMT_BRACKET_SPACING`

是否在括号之间打印空格。

##### `int_types`

- 类型: string
- 默认值: long
- 环境变量: `FOUNDRY_FMT_INT_TYPES` or `DAPP_FMT_INT_TYPES`

uint/int256 类型的风格。 有效值为:

- `long` (默认): 使用明确的 `uint256` 或 `int256`
- `short`: 使用隐式的 `uint` 或 `int`
- `preserve`: 使用源代码中定义的类型

##### `func_attrs_with_params_multiline`

- 类型: bool
- 默认值: true
- 环境变量: `FOUNDRY_FMT_FUNC_ATTRS_WITH_PARAMS_MULTILINE` or `DAPP_FMT_FUNC_ATTRS_WITH_PARAMS_MULTILINE`

如果函数参数是多行的，那么总是把函数属性放在不同的行上。

##### `quote_style`

- 类型: string
- 默认值: double
- 环境变量: `FOUNDRY_FMT_QUOTE_STYLE` or `DAPP_FMT_QUOTE_STYLE`

定义了引号的样式。 有效值为：

- `double` (默认): 尽可能使用双引号 (`"`)
- `single`: 尽可能使用单引号 (`'`)
- `preserve`: 使用源代码中定义的引号

##### `number_underscore`

- 类型: string
- 默认值: preserve
- 环境变量: `FOUNDRY_FMT_NUMBER_UNDERSCORE` or `DAPP_FMT_NUMBER_UNDERSCORE`

数字字段中下划线的样式。 有效值为：

- `preserve` (默认): 使用源代码中定义的下划线
- `thousands`: 如果大于 9999，则每 1000 加一个下划线。例如 `1000` 的格式为 `1000`，`10000` 的格式为 `10_000`
- `remove`: 去除所有下划线
