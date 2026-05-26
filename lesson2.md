# Lesson 2

## Material

https://github.com/unixfile/learning-python-2026

## Today

- Numbers and arithmetic
- Booleans and truthiness
- Reading and writing files
- Code blocks and indentation

# 1. Integers and floats

```
In : foo = 42
In : type(foo)
Out: int

In : bar = 2.71828
In : type(bar)
Out: float
```

# 2. Basic arithmetic

```
In : result = 1 + 2 - 3 * 4
In : result, type(result)
Out: (-9, int)

In : quotient = 3 / 7
In : quotient, type(quotient)
Out: (0.4285714285714285, float)
```

# 3. Power and modulo

```
In : 2 ** 5
Out: 32

In : 33 % 10
Out: 3
```

# 4. Augmented assignment

```python
n += 1   # n = n + 1
q /= 3   # q = q / 3
r %= 2   # r = r % 2

# i++ has no meaning in Python
```

# 5. Booleans

```
In : to_be = True
In : not_to_be = False

In : to_be or not_to_be
Out: True

In : to_be and not_to_be
Out: False
```

# 6. Truthiness

```
In : bool(0)
Out: False
In : bool(1600)
Out: True

In : bool("")
Out: False
In : bool("Hamlet")
Out: True

In : bool(0.0)
Out: False
In : bool(0.0001)
Out: True
```

# 7. Using booleans and truthiness

```python
if True:
    print("Always")
if False:
    print("Never")

if 1337:
    print("Always")
if 0:
    print("Never")
```

# 8. Reading from a file

```python
f = open("foo.txt")
content = f.read()
f.close()
type(content)  # str
```

# 9. Reading lines

```python
f = open("bar.txt")
lines = f.readlines()
f.close()
type(lines)  # list
```

# 10. Iterating over lines

```python
f = open("baz.txt")
for line in f:
    print(line)
f.close()
```

# 11. Writing to a file

```python
f = open("file.txt", "w")
f.write("Travel far, ")
f.write("meet yourself.\n")
f.flush()
f.close()
```

# 12. Appending to a file

```python
f = open("file.txt", "a")
f.write("Appending...\n")
f.flush()
f.close()
```

# 13. Opening with scope

```python
with open("file.txt", "r") as f:
    data = f.read()
```

- File is closed automatically at end of block

# 14. Code blocks

Blocks start with `:` and indent 4 spaces

```python
if True:
    print("banan")
    print("melon")
    for i in range(10):
        print(1 << i)
    print("kiwi")
    print("citron")
```

- Blocks can be nested
