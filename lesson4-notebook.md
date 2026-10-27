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

## Files

```{code-cell} ipython3
f = open("mockup.txt")
content = f.read()
f.close()
type(content), len(content)
```

```{code-cell} ipython3
f = open("mockup.txt")
lines = f.readlines()
f.close()
type(lines), len(lines)
```

```{code-cell} ipython3
f = open("mockup.txt")
for line in f:
    print(line, end="")
f.close()
```

```{code-cell} ipython3
f = open("hello.txt", "w")
f.write("Travel far, ")
f.write("meet yourself.\n")
f.flush()
f.close()
```

```{code-cell} ipython3
with open("hello.txt", "r") as f:
    print(f.read())
```

```{code-cell} ipython3
with open("hello.txt", "a") as f:
    f.write("Appending...\n")

with open("hello.txt", "r") as f:
    print(f.read())
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

## Sets

```{code-cell} ipython3
my_set = {3, 7, 'gamma', 'echo'}
type(my_set)
```

## Set idiosyncrasies

```{code-cell} ipython3
fruits = {'banan', 'banan', 'melon', 'kiwi'}
fruits
```

```{code-cell} ipython3
try:
    fruits[0]
except TypeError as e:
    print(e)
```

## Adding and removing

```{code-cell} ipython3
countries = {'Brasilien', 'Chile'}
countries.add('Bolivia')
countries
```

```{code-cell} ipython3
countries.update({'Brasilien', 'Paraguay'})
countries
```

```{code-cell} ipython3
try:
    countries.remove('Sverige')
except KeyError as e:
    print(f"KeyError: {e}")
countries.discard('Sverige')
```

## Set operations

```{code-cell} ipython3
low = {1, 2, 3, 4}
high = {3, 4, 5, 6}
```

```{code-cell} ipython3
low | high  # union
```

```{code-cell} ipython3
low & high  # intersection
```

```{code-cell} ipython3
low ^ high  # symmetric difference
```

```{code-cell} ipython3
low - high  # difference
```

## Set comprehensions

```{code-cell} ipython3
squares = {x**2 for x in range(6)}
squares
```

```{code-cell} ipython3
evens = {x for x in range(10) if x % 2 == 0}
evens
```

## Dictionaries

```{code-cell} ipython3
fruit_colors = {
    'äpple':    'grön',
    'banan':    'gul',
    'vindruva': 'lila',
}
type(fruit_colors)
```

## Accessing values

```{code-cell} ipython3
fruit_colors['banan']
```

```{code-cell} ipython3
try:
    fruit_colors['citron']
except KeyError as e:
    print(f"KeyError: {e}")
```

```{code-cell} ipython3
fruit_colors.get('citron')
```

```{code-cell} ipython3
fruit_colors.get('citron', 'okänd')
```

## Looping over dictionaries

```{code-cell} ipython3
for fruit in fruit_colors:
    print(fruit)
```

```{code-cell} ipython3
for color in fruit_colors.values():
    print(color)
```

```{code-cell} ipython3
for fruit, color in fruit_colors.items():
    print(f"{fruit}: {color}")
```

## Modifying dictionaries

```{code-cell} ipython3
fruit_colors['äpple'] = 'röd'
fruit_colors['mango'] = 'orange'
fruit_colors
```

```{code-cell} ipython3
fruit_colors.pop('banan')
```

```{code-cell} ipython3
fruit_colors.update({'kiwi': 'grön', 'äpple': 'grön'})
fruit_colors
```

## Nested dictionaries

```{code-cell} ipython3
betyg = {
    'Alice': {'Matte': 85, 'Kemi': 92},
    'Bob':   {'Matte': 78, 'Kemi': 88},
}
betyg['Alice']['Matte']
```

```{code-cell} ipython3
betyg['Bob']['Engelska'] = 87
betyg
```

## Dictionary comprehensions

```{code-cell} ipython3
squares = {x: x**2 for x in range(5)}
squares
```

```{code-cell} ipython3
original = {'äpple': 1, 'banan': 2, 'körsbär': 3}
swapped = {v: k for k, v in original.items()}
swapped
```
