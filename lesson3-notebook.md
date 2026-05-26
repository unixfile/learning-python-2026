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

# Lesson 3

Run cells with Shift+Enter.

## Lists

```{code-cell} ipython3
fruits = ["banan", "melon", "kiwi", "citron"]
type(fruits), len(fruits)
```

```{code-cell} ipython3
fruits[0]
```

```{code-cell} ipython3
fruits[-1]  # -1 is the last element
```

```{code-cell} ipython3
fruits[0] = "apelsin"
fruits
```

```{code-cell} ipython3
fruits.append("mango")
fruits
```

```{code-cell} ipython3
fruits.pop()
```

```{code-cell} ipython3
fruits.insert(0, "vindruva")
fruits.remove("kiwi")
fruits
```

```{code-cell} ipython3
nums = [3, 1, 4, 1, 5, 9, 2, 6]
nums.sort()
nums
```

```{code-cell} ipython3
sorted([3, 1, 4])
```

## Slicing

```{code-cell} ipython3
s = [0, 1, 2, 3, 4, 5]
s[1:4]  # includes 1, excludes 4
```

```{code-cell} ipython3
s[:3], s[3:]
```

```{code-cell} ipython3
s[::2], s[::-1]
```

## Copying lists

```{code-cell} ipython3
a = [1, 2, 3]
b = a
b.append(4)
a
```

```{code-cell} ipython3
c = a.copy()
c.append(5)
a
```

## Multidimensional lists

```{code-cell} ipython3
matrix = [[1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]]
matrix[1][2]
```

## Mutability

```{code-cell} ipython3
numbers = [1, 2, 3]
numbers[0] = 99
numbers
```

```{code-cell} ipython3
s = "hello"
try:
    s[0] = "H"
except TypeError as e:
    print(e)
```

## Tuples

```{code-cell} ipython3
t = (1, 2, 3)
type(t), t[0]
```

```{code-cell} ipython3
try:
    t[0] = 99
except TypeError as e:
    print(e)
```

```{code-cell} ipython3
point = (10, 20)
x, y = point
x, y
```

```{code-cell} ipython3
single = (42,)
type(single)
```
