CSS
=========================
## 背景
这篇文章定义了 HTML 和 CSS 的格式和代码规范，旨在提高代码质量和协作效率。

### 通用样式规范
- 协议
图片，样式表，脚本及其他媒体文件尽量使用 HTTPS 协议，除非该文件不支持 HTTPS。

### 通用格式规范
- 缩进
一次缩进2个空格，不要使用 tab 或者混合 tab 和空格的缩进。

- 大小写
以下都应该用小写：
HTML 元素名称，属性，属性值（除非 text/CDATA），CSS 选择器，属性，属性值。

- 结尾空格
结尾空格不仅多余，而且在比较代码时会更麻烦。

### 通用元规范
- 编码
在 HTML 中通过 <meta charset="utf-8"> 指定编码方式，CSS 中不需要指定，因为默认是 UTF-8。

- 注释
使用注释来解释代码：包含的模块，功能以及优点。

- 任务项
用 TODO 来标记待办事项，而不是用一些其他的标记，像 @@。

### HTML 风格规范
- 文档类型
HTML 文档应使用 HTML5 的文档类型：<!DOCTYPE html>。
孤立标签无需封闭自身，<br> 不要写成 <br />。

- HTML 正确性
尽可能使用正确的 HTML。

- 语义化
根据使用场景选择正确的 HTML 元素（有时被错误的称为“标签”）。例如，使用 h1 元素创建标题，p 元素创建段落，a 元素创建链接等等。正确的使用 HTML 元素对于可访问性、可重用性以及编码效率都很重要。

- 多媒体元素降级
对于像图片、视频、canvas 动画等多媒体元素，确保提供其他可访问的内容。图片可以使用替代文本（alt），视频和音频可以使用文字版本。

- 关注分离
标记、样式和脚本分离，确保相互耦合最小化。

- 实体引用
如果团队中文件和编辑器使用同样的编码方式，就没必要使用实体引用，如 &mdash;， &rdquo;，&#x263a;，除了一些在 HTML 中有特殊含义的字符（如 < 和 &）以及不可见的字符（如空格）。

- type 属性
在引用样式表和脚本时，不要指定 type 属性，除非不是 CSS 或 JavaScript。
因为 HTML5 中已经默认指定样式变的 type 是 text/css，脚本的type 是 text/javascript。

### HTML 格式规范
- HTML 引号
属性值用双引号。

### CSS 风格规范
- ID 和 Class 命名
使用有含义的 id 和 class 名称。

- 选择器
除非需要，否则不要在 id 或 class 前加元素名。

- 属性简写
尽量使用 CSS 中可以简写的属性 (如 font)，可以提高编码效率以及代码可读性。

- 0 和单位
值为 0 时不用添加单位。

- 16进制表示法

- 前缀
使用带前缀的命名空间可以防止命名冲突，同时提高代码可维护性。

- ID 和 Class 命名分隔符
选择器中使用连字符可以提高可读性。

### CSS 格式规范
- 书写顺序
按照属性首字母顺序书写 CSS 易于阅读和维护，排序时忽略带有浏览器前缀的属性。

- 块级内容缩进
为了反映层级关系和提高可读性，块级内容都应缩进。

- 声明结束
每行 CSS 都应以分号结尾。

- 属性名结尾
属性名和值之间都应有一个空格。

- 声明样式块的分隔
在选择器和 {} 之间用空格隔开。

- 选择器分隔
每个选择器都另起一行。

- 规则分隔
规则之间都用空行隔开。