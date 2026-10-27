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

# Lesson 2

Run cells with Shift+Enter.

## Numbers

```{code-cell} ipython3
42
```

```{code-cell} ipython3
2.71828
```

```{code-cell} ipython3
type(42), type(2.71828)
```

```{code-cell} ipython3
result = 1 + 2 - 3 * 4
result, type(result)
```

```{code-cell} ipython3
quotient = 3 / 7
quotient, type(quotient)
```

```{code-cell} ipython3
2 ** 5, 33 % 10
```

```{code-cell} ipython3
n = 10
n += 3
n
```

## Booleans

```{code-cell} ipython3
to_be = True
not_to_be = False
to_be, not_to_be, type(to_be)
```

```{code-cell} ipython3
to_be or not_to_be, to_be and not_to_be
```

```{code-cell} ipython3
bool(0), bool(1600)
```

```{code-cell} ipython3
bool(""), bool("Hamlet")
```

```{code-cell} ipython3
bool(0.0), bool(0.0001)
```

```{code-cell} ipython3
if 1337:
    print("truthy")
if 0:
    print("never printed")
```

## Code blocks

```{code-cell} ipython3
if True:
    print("banan")
    print("melon")
    for i in range(4):
        print(1 << i)
    print("kiwi")
    print("citron")
```

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
