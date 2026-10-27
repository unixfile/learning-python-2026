# Lesson 2

## Material

https://github.com/unixfile/learning-python-2026

## Today

- Numbers and arithmetic
- Booleans and truthiness
- Code blocks and indentation
- if/elif/else
- Comparison and logical operators

# 1 Integers and floats

```
In : foo = 42
In : type(foo)
Out: int

In : bar = 2.71828
In : type(bar)
Out: float
```

# 2 Basic arithmetic

```
In : result = 1 + 2 - 3 * 4
In : result, type(result)
Out: (-9, int)

In : quotient = 3 / 7
In : quotient, type(quotient)
Out: (0.4285714285714285, float)
```

# 3 Power and modulo

```
In : 2 ** 5
Out: 32

In : 33 % 10
Out: 3
```

# 4 Augmented assignment

```python
n += 1   # n = n + 1
q /= 3   # q = q / 3
r %= 2   # r = r % 2

# i++ has no meaning in Python
```

# 5 Booleans

```
In : to_be = True
In : not_to_be = False

In : to_be or not_to_be
Out: True

In : to_be and not_to_be
Out: False
```

# 6 Truthiness

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

# 7 Code blocks

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

# 8 Using booleans and truthiness

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

# 9 if statement

```python
password = input("Choose a password: ")

if password == "12345":
    print("That's a bad password!")
```

- Condition is any boolean or truthy value
- Block runs only when condition is `True`

# 10 if/elif/else

```python
temperature = int(input("Current temperature: "))

if temperature > 20:
    print("It's warm")
elif temperature > 10:
    print("It's cool")
elif temperature > 5:
    print("It's cold")
else:
    print("It's normal Swedish temperature")
```

- Only one block runs; the rest are skipped

# 11 Comparison operators

```python
x, y = 5, 10

x == y    # False  — equal
x != y    # True   — not equal
x > y     # False  — greater than
x >= y    # False  — greater than or equal
x < y     # True   — less than
x <= y    # True   — less than or equal
```

# 12 Logical operators

```python
x, y, z = 15, 20, 5

if x > 10 and y > 10:
    print("Both greater than 10")

if x > 20 or z < 10:
    print("At least one condition true")

if not (x > y):
    print("x is not greater than y")
```

# 13 Pythonic style

```python
# Preferred                   # Avoid
if value is None: ...          # if value == None: ...
if value is not None: ...      # if value != None: ...
if my_list: ...                # if len(my_list) > 0: ...
if not my_list: ...            # if len(my_list) == 0: ...
if condition: ...              # if condition == True: ...
```

- A linter like `ruff` can flag these automatically
