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

# Lesson 1

Run cells with Shift+Enter.

## Values and types

```{code-cell} ipython3
42
```

```{code-cell} ipython3
3.14
```

```{code-cell} ipython3
"hello"
```

```{code-cell} ipython3
True
```

```{code-cell} ipython3
type(42), type(3.14), type("hello"), type(True)
```

## Variables

```{code-cell} ipython3
x = 42
x
```

```{code-cell} ipython3
a, b = 5, 10
a, b
```

## Strings

```{code-cell} ipython3
s1 = "double quotes"
s2 = 'single quotes'
s3 = """multiline
string"""
s1, s2, s3
```

```{code-cell} ipython3
"Hello" + ", " + "world!", "ha" * 3
```

```{code-cell} ipython3
len("hello"), "ell" in "hello"
```

```{code-cell} ipython3
s = "  Hello, World!  "
s.lower(), s.upper(), s.strip(), s.strip().replace("World", "Alice")
```

```{code-cell} ipython3
words = "banan melon kiwi citron".split()
words, " / ".join(words)
```

```{code-cell} ipython3
ip = "192.168.2.1"
parts = ip.split(".")
parts, ".".join(parts)
```

## f-strings

```{code-cell} ipython3
name = "Alice"
f"Hello, {name}!"
```

```{code-cell} ipython3
a, b = 5, 10
f"The sum of {a} and {b} is {a + b}."
```

```{code-cell} ipython3
pi = 3.14159
f"Pi is {pi:.2f}."
```

## Object inspection

```{code-cell} ipython3
x = "hello"
type(x)
```

```{code-cell} ipython3
dir(x)
```

```{code-cell} ipython3
help(str.split)
```
