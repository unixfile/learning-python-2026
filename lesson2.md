# Lesson 2

## Material

https://github.com/unixfile/learning-python-2026

## Today

- Numbers and arithmetic
- Booleans and comparison operators
- Truthiness
- Code blocks and indentation
- if/elif/else
- Logical operators
- while loops

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
Out: (0.42857142857142855, float)
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

# 6 Comparison operators

```python
x, y = 5, 10

x == y    # False  — equal
x != y    # True   — not equal
x > y     # False  — greater than
x >= y    # False  — greater than or equal
x < y     # True   — less than
x <= y    # True   — less than or equal
```

# 7 Truthiness

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

# 8 Code blocks

Blocks start with `:` and indent 4 spaces

```python
if True:
    print("banan")
    print("melon")
    if True:
        print("kiwi")
    print("citron")
```

- Blocks can be nested

# 9 Using booleans and truthiness

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

# 10 if statement

```python
password = input("Choose a password: ")

if password == "12345":
    print("That's a bad password!")
```

- Condition is any boolean or truthy value
- Block runs only when condition is `True`

# 11 if/elif/else

```python
# input() returns a str; int() converts it to an int
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

# 13 while loop

```python
i = 5
while i > 0:
    print(i, end=' ')
    i -= 1
# Output: 5 4 3 2 1
```

- Loop runs as long as the condition is `True`
- Forgetting to update `i` creates an infinite loop

# 14 while True

```python
while True:
    user_input = input("Enter 'exit' to stop: ")
    if user_input == 'exit':
        break
    print(f"You entered: {user_input}")
```

- `break` is the only way out of a `while True:` loop
- Useful for menus and simple REPLs
