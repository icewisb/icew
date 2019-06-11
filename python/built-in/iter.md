iterable & iterator & generator
==================================
*python3.5.2*

1 迭代器协议是指：对象需要提供next方法，它要么返回迭代中的下一项，要么就引起一个StopIteration异常，以终止迭代
2 可迭代对象就是：实现了迭代器协议的对象
3 协议是一种约定，可迭代对象实现迭代器协议，Python的内置工具(如for循环，sum，min，max函数等)使用迭代器协议访问对象。

## iterable 与 iterator
能够一次返回它的一个自身成员元素。实际上，任何具有`__iter__()`方法的对象，Python就认为它是一个iterable对象。 
Python里有大量内置的iterable类型，如： list，str，tuple，dict，file，xrange等。使用内置的`iter()`函数来生成iterator。即: 
iter(iterable) -> iterator object

迭代器模式提供一种访问有序访问聚合对象里元素的方法。具体到Python语言里，iterator对象就是且必须实现了迭代协议（iterator protocol）的对象。Python里的iterator实现了两个方法：

1 `__iter__()`    #   只有1方法只是iterable对象，只有同时具有1，2方法才是Iterator
2 `__next__()`    #  

## generator
Python使用生成器对延迟操作提供了支持。所谓延迟操作，是指在需要的时候才产生结果，而不是立即产生结果。这也是生成器的主要好处，内存不是线性增长。

可以通过生成器函数（yield）或生成器表达式来生产生成器。

# 生成器注意事项只能遍历一次

参考：https://www.zhihu.com/question/20829330
