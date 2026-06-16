---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Lesson 6

Run cells with Shift+Enter.

## Regular expressions: a first match

```{code-cell} ipython3
import re

anthem = "God save our gracious King"

m = re.search(r'gracious King', anthem)
m.group()
```

## Greedy vs. non-greedy

```{code-cell} ipython3
line = "God save our gracious King"
re.search(r'G.*o', line).group()    # greedy: longest
```

```{code-cell} ipython3
re.search(r'G.*?o', line).group()   # non-greedy: shortest
```

## Finding all matches

```{code-cell} ipython3
text = "The rain in Spain stays mainly in the plain."
re.findall(r'\b\w*ain\b', text)
```

## Groups

```{code-cell} ipython3
text = 'Berlin 1989-11-09 22:45 UTC+1'
rgx = r'(\d{4})-(\d{2})-(\d{2})\s(\d{2}):(\d{2})'

m = re.search(rgx, text)
m.group(0), m.group(1), m.group(2), m.group(3)
```

## Named groups

```{code-cell} ipython3
m = re.search(r'(?P<year>\d{4})-(?P<month>\d{2})', "Date: 2024-06-13")
m.group('year'), m.group('month')
```

## Flags and escaping

```{code-cell} ipython3
text = "April is the\ncruellest month"
re.search(r'.*', text).group()          # '.' stops at the newline
```

```{code-cell} ipython3
re.search(r'.*', text, flags=re.DOTALL).group()   # now spans both lines
```

```{code-cell} ipython3
re.escape("$^*+?{}")
```

## Defining functions

```{code-cell} ipython3
def multiply(a, b):
    """Return the product of two numbers."""
    return a * b

multiply(3, 4), multiply(25, 25)
```

## Arguments

```{code-cell} ipython3
def greet(name, age, greeting='Hello'):
    print(f'{greeting}, {name}! You are {age} years old.')

greet('Alice', 30)
greet(greeting='Good afternoon', age=80, name='John')
greet('Taylor', 34, greeting='Hi')
```

## Scope: where Python looks for a name

```{code-cell} ipython3
x = "global"

def outer():
    x = "enclosing"
    def inner():
        x = "local"
        print(x)
    inner()
    print(x)

outer()
print(x)
```

```{code-cell} ipython3
print(max)   # the built-in
max = 3      # shadows it
print(max)
del max      # restore the built-in
```

## The * and ** operators

```{code-cell} ipython3
def total(*args):        # collect into a tuple
    return sum(args)

nums = [1, 2, 3]
total(1, 2, 3), total(*nums)
```

```{code-cell} ipython3
def show(**kwargs):      # collect into a dict
    print(kwargs)

show(a=1, b=2)
show(**{'a': 1, 'b': 2})
```

## Lambda expressions

```{code-cell} ipython3
power = lambda x, y: x ** y
power(2, 10)
```

```{code-cell} ipython3
people = {'Bob': 25, 'Dave': 20, 'Alice': 30}
sorted(people.items(), key=lambda item: item[1])
```

## The mutable default trap

```{code-cell} ipython3
def add_item(item, basket=[]):   # basket is evaluated once!
    basket.append(item)
    return basket

print(add_item('a'))
print(add_item('b'))   # surprise: the same list is reused
```

```{code-cell} ipython3
def add_item(item, basket=None):
    if basket is None:
        basket = []
    basket.append(item)
    return basket

print(add_item('a'))
print(add_item('b'))
```
