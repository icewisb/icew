es6
=============

- 查看es6特性支持

`$node --v8-options | grep harmony`

或者使用工具es-checker

### babel配置
- babel-preset-latest *最新转码规则*
- bable-preset-react #*react 转码规则*

*不同阶段*
- babel-preset-stage-0
- babel-preset-stage-1
- babel-preset-stage-2
- babel-preset-stage-3

将规则添加到项目根目录下的.babelrc文件中，
`
{
  "presets": [
    "latest",
    "react",
    "stage-2"
  ],
  "plugins": []
}
`

### babel指令
参数
- -o|--out-file 指定文件
- -d|--out-dir 指定目录
- -s 生成source map文件


## JavaScript块级作用域
```
//  IIFE
(function () {
var tmp = ...;
...
}())
```

```
// 块级作用域
{
let tmp = ...;
}
```

## 函数参数解构
{x = 0, y = 1} = {} 变量设置默认值

{x, y} = {x: 0, y: 0} 函数参数设置默认值


## es6 进度
```
# Constants
# Scoping
# Arrow Functions
# Extended Parameter Handling
! Template Literals              String.raw 
! Extended Literals
Enhanced Regular Expression
Enhanced Object Properties
# Destructuring Assignment
# Modules
Classes
# Symbol Type            Object.getOwnPropertyNames, Object.getOwnPropertySymbols, Symbol.for, Symbol.keyFor
Iterators
Generators
Map/Set & WeakMap/WeakSet          const m = new Map(); m.set, m.get
! Typed Arrays
New Built-In Methods
# Promises
Meta-Programming
Internationalization & Localization
```
