collections
=============

- namedtuple
  
```
from collections import namedtuple
website = namedtuple('Website', ['a', 'b', 'c'])
t = ('x', 'y', 'z')
a = Website(*t)
```

- deque *从队列头插入数据复杂度为常数，insert为线性*

- Counter

- OrderedDict

- defaultdict
```
d = defaultdict(int)
d['a'] += 5
d['a']  # 5

l = defaultdict(list)
l['b'].append('a')
l['b']  # ['a']
```
