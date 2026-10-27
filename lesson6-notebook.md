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

## Exception handling

```{code-cell} ipython3
numbers = [1, 2, 3]

try:
    print(numbers[5])
except IndexError:
    print("Index out of range")
```

## Multiple exception types

```{code-cell} ipython3
try:
    value = int("abc")
    numbers = [1, 2, 3]
    print(numbers[5])
except ValueError:
    print("Not a valid number")
except IndexError:
    print("Index out of range")
```

```{code-cell} ipython3
try:
    value = int("abc")
except (ValueError, IndexError) as e:
    print(f"An error occurred: {e}")
```

## Stack traces

```{code-cell} ipython3
# Run this and read the traceback below
int("abc")
```

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
