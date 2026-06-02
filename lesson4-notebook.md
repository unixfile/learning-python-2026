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

# Lesson 4

Run cells with Shift+Enter.

## if/elif/else

```{code-cell} ipython3
password = "12345"

if password == "12345":
    print("That's a bad password!")
```

```{code-cell} ipython3
temperature = 8

if temperature > 20:
    print("It's warm")
elif temperature > 10:
    print("It's cool")
elif temperature > 5:
    print("It's cold")
else:
    print("It's normal Swedish temperature")
```

## Comparison operators

```{code-cell} ipython3
x, y = 5, 10
x == y, x != y, x > y, x >= y, x < y, x <= y
```

## Logical operators

```{code-cell} ipython3
x, y, z = 15, 20, 5
x > 10 and y > 10
```

```{code-cell} ipython3
x > 20 or z < 10
```

```{code-cell} ipython3
not (x > y)
```

## for loop

```{code-cell} ipython3
fruits = ["banan", "melon", "kiwi", "citron"]
for fruit in fruits:
    print(fruit)
```

## range()

```{code-cell} ipython3
list(range(5))
```

```{code-cell} ipython3
list(range(2, 8))
```

```{code-cell} ipython3
list(range(0, 10, 2))
```

## break and continue

```{code-cell} ipython3
for n in range(1, 10):
    if n == 5:
        break
    print(n, end=' ')
```

```{code-cell} ipython3
for n in range(1, 10):
    if n % 2 == 0:
        continue
    print(n, end=' ')
```

## enumerate

```{code-cell} ipython3
fruits = ["banan", "melon", "kiwi", "citron"]
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")
```

## while loop

```{code-cell} ipython3
i = 5
while i > 0:
    print(i, end=' ')
    i -= 1
```

## List comprehensions

```{code-cell} ipython3
squares = [x**2 for x in range(6)]
squares
```

```{code-cell} ipython3
evens = [x for x in range(10) if x % 2 == 0]
evens
```

## Generator expressions

```{code-cell} ipython3
squares = (x**2 for x in range(100_000_000))
type(squares)
```

```{code-cell} ipython3
next(squares), next(squares), next(squares)
```
