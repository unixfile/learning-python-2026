# Lesson 4

## Material

https://github.com/unixfile/learning-python-2026

## Today

- Reading and writing files
- List comprehensions
- Generator expressions
- Sets and set operations
- Dictionaries

# 1 Reading from a file

```python
f = open("foo.txt")
content = f.read()
f.close()
type(content)  # str
```

# 2 Reading lines

```python
f = open("bar.txt")
lines = f.readlines()
f.close()
type(lines)  # list
```

# 3 Iterating over lines

```python
f = open("baz.txt")
for line in f:
    print(line)
f.close()
```

# 4 Writing to a file

```python
f = open("file.txt", "w")
f.write("Travel far, ")
f.write("meet yourself.\n")
f.flush()
f.close()
```

# 5 Appending to a file

```python
f = open("file.txt", "a")
f.write("Appending...\n")
f.flush()
f.close()
```

# 6 Opening with scope

```python
with open("file.txt", "r") as f:
    data = f.read()
```

- File is closed automatically at end of block

# 7 List comprehensions

```
In : squares = [x**2 for x in range(6)]
In : squares
Out: [0, 1, 4, 9, 16, 25]

In : evens = [x for x in range(10) if x % 2 == 0]
In : evens
Out: [0, 2, 4, 6, 8]
```

- Concise syntax for building lists from iterables

# 8 Generator expressions

```
In : squares = (x**2 for x in range(100_000_000))
In : type(squares)
Out: generator
```

- `()` instead of `[]` — values produced on demand
- Takes almost no memory
- Can only be iterated once

```
In : next(squares)
Out: 0
In : next(squares)
Out: 1
```

# 9 Sets

```
In : my_set = {3, 7, 'gamma', 'echo'}
In : type(my_set)
Out: set
```

- A set is an unordered collection of **unique** elements
- Sets are mutable

# 10 Set idiosyncrasies

```
In : fruits = {'banan', 'banan', 'melon', 'kiwi'}
In : fruits
Out: {'banan', 'melon', 'kiwi'}
```

- Duplicates are silently removed
- Elements have no guaranteed order, so indexing is not possible

```
In : fruits[0]
...
TypeError: 'set' object is not subscriptable
```

# 11 Adding and removing

```
In : countries = {'Brasilien', 'Chile'}

In : countries.add('Bolivia')
In : countries
Out: {'Brasilien', 'Chile', 'Bolivia'}

In : countries.update({'Brasilien', 'Paraguay'})
In : countries
Out: {'Brasilien', 'Chile', 'Bolivia', 'Paraguay'}

In : countries.remove('Sverige')   # KeyError if missing
In : countries.discard('Sverige')  # silent no-op if missing
```

# 12 Set operations

```
In : low = {1, 2, 3, 4}
In : high = {3, 4, 5, 6}

In : low | high   # union
Out: {1, 2, 3, 4, 5, 6}

In : low & high   # intersection
Out: {3, 4}

In : low ^ high   # symmetric difference
Out: {1, 2, 5, 6}

In : low - high   # difference
Out: {1, 2}
```

# 13 Set comprehensions

```
In : squares = {x**2 for x in range(6)}
In : squares
Out: {0, 1, 4, 9, 16, 25}

In : evens = {x for x in range(10) if x % 2 == 0}
In : evens
Out: {0, 2, 4, 6, 8}
```

- Same syntax as list comprehensions but with `{}`

# 14 Dictionaries

```
In : fruit_colors = {
   :     'äpple':   'grön',
   :     'banan':   'gul',
   :     'vindruva': 'lila',
   : }
In : type(fruit_colors)
Out: dict
```

- A dictionary stores key-value pairs
- Dictionaries are mutable and ordered (since Python 3.7)

# 15 Accessing values

```
In : fruit_colors['banan']
Out: 'gul'

In : fruit_colors['citron']              # KeyError!
In : fruit_colors.get('citron')          # None, no crash
In : fruit_colors.get('citron', 'okänd')
Out: 'okänd'
```

- `[]` raises `KeyError` when the key is missing
- `.get()` returns `None` (or a default) instead

# 16 Looping over dictionaries

```python
for fruit in fruit_colors:
    print(fruit)
# äpple
# banan
# vindruva

for color in fruit_colors.values():
    print(color)
# grön
# gul
# lila

for fruit, color in fruit_colors.items():
    print(f"{fruit}: {color}")
# äpple: grön
# banan: gul
# vindruva: lila
```

# 17 Modifying dictionaries

```
In : fruit_colors['äpple'] = 'röd'    # update existing
In : fruit_colors['mango'] = 'orange' # add new key

In : fruit_colors.pop('banan')
Out: 'gul'

In : fruit_colors.update({'kiwi': 'grön', 'äpple': 'grön'})
```

# 18 Nested dictionaries

```
In : betyg = {
   :     'Alice': {'Matte': 85, 'Kemi': 92},
   :     'Bob':   {'Matte': 78, 'Kemi': 88},
   : }

In : betyg['Alice']['Matte']
Out: 85

In : betyg['Bob']['Engelska'] = 87
```

# 19 Dictionary comprehensions

```
In : squares = {x: x**2 for x in range(5)}
In : squares
Out: {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}
```

```
In : original = {'äpple': 1, 'banan': 2, 'körsbär': 3}
In : swapped = {v: k for k, v in original.items()}
In : swapped
Out: {1: 'äpple', 2: 'banan', 3: 'körsbär'}
```
