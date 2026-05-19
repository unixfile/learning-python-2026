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
