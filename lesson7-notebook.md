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

# Lesson 7

Run cells with Shift+Enter.

## Objects and classes

```{code-cell} ipython3
# Everything is an object, created from a class (its type)
type(42), type('hello'), type([1, 2])
```

## The class keyword

```{code-cell} ipython3
class Dog:
    species = 'Canis familiaris'   # class attribute
    def __init__(self, name, age):
        self.name = name           # instance attribute
        self.age = age
    def bark(self):
        print(f'{self.name} says woof!')

rex = Dog('Rex', 5)
rex.bark()
rex.name, rex.age, Dog.species
```

## self: the hidden first argument

```{code-cell} ipython3
buddy = Dog('Buddy', 3)   # __init__ runs automatically
buddy.name, buddy.age
```

```{code-cell} ipython3
rex = Dog('Rex', 5)
rex.bark()        # what you write
Dog.bark(rex)     # the same call — Python passes rex in as self
```

## Class attributes vs instance attributes

```{code-cell} ipython3
rex = Dog('Rex', 5)
lola = Dog('Lola', 2)
Dog.species, rex.species, lola.species   # one shared value, seen via the class
```

```{code-cell} ipython3
rex.species = 'mutt'   # creates an instance attribute that shadows the class
rex.species, lola.species, Dog.species   # only rex changed
```

## Instance methods

```{code-cell} ipython3
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def bark(self):
        print(f'{self.name} says woof!')
    def dog_years(self):
        return self.age * 7

buddy = Dog('Buddy', 3)
buddy.bark()
buddy.dog_years()
```

## Static methods

```{code-cell} ipython3
class MathOps:
    @staticmethod
    def add(x, y):
        return x + y
    @staticmethod
    def square(x):
        return x * x

MathOps.add(5, 3), MathOps.square(4)
```

## Magic methods

```{code-cell} ipython3
class Vec:
    def __init__(self, x):
        self.x = x
    def __repr__(self):
        return f'Vec({self.x})'
    def __eq__(self, other):
        return self.x == other.x

Vec(3)   # the cell echo uses __repr__
```

```{code-cell} ipython3
Vec(3) == Vec(3), Vec(3) == Vec(4)   # __eq__ defines ==
```

## Protected and private attributes

```{code-cell} ipython3
class MyClass:
    def __init__(self, value):
        self._protected = value   # convention: internal use
        self.__private = value    # name-mangled to _MyClass__private
    def get_private(self):
        return self.__private

obj = MyClass(10)
obj._protected, obj.get_private(), obj._MyClass__private
```

## Properties

```{code-cell} ipython3
class Dog:
    def __init__(self, age):
        self._age = age
    @property
    def age(self):
        return self._age
    @age.setter
    def age(self, value):
        if value < 0:
            raise ValueError('age must be >= 0')
        self._age = value

d = Dog(3)
d.age = 5      # the setter runs and validates
d.age
```

```{code-cell} ipython3
d.age = -1     # the setter rejects it (expected ValueError)
```

## Data classes

```{code-cell} ipython3
from dataclasses import dataclass

@dataclass
class Point:
    x: float
    y: float

p = Point(1.0, 2.0)
p              # __repr__ was generated for you
```

```{code-cell} ipython3
str(p), p == Point(1.0, 2.0)   # __str__/__eq__ generated too
```

## Inheritance

```{code-cell} ipython3
class Animal:
    def __init__(self, name):
        self.name = name

class Dog(Animal):              # inherits __init__
    def speak(self):
        return f'{self.name} woofs'

class Puppy(Dog):
    def __init__(self, name, owner):
        super().__init__(name)  # run the parent's __init__
        self.owner = owner

pup = Puppy('Rex', 'Sam')
pup.name, pup.owner, pup.speak()
```

## Composition

```{code-cell} ipython3
class Engine:
    def start(self):
        return 'vroom'

class Car:
    def __init__(self):
        self.engine = Engine()   # a Car has an Engine
    def drive(self):
        return self.engine.start()

Car().drive()
```

## Further reading: __repr__ vs __str__

```{code-cell} ipython3
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def __repr__(self):
        return f'Dog({self.name!r}, {self.age!r})'
    def __str__(self):
        return f'{self.name} (age {self.age})'

d = Dog('Rex', 5)
repr(d), str(d)
```

```{code-cell} ipython3
print(d)   # print() uses __str__
d          # the cell echo uses __repr__
```

## Further reading: frozen data classes and field()

```{code-cell} ipython3
from dataclasses import dataclass, field

@dataclass(frozen=True)
class Point:
    x: float
    y: float

p = Point(1.0, 2.0)
p.x = 3.0   # frozen: assignment raises FrozenInstanceError (expected)
```

```{code-cell} ipython3
@dataclass
class Kennel:
    dogs: list = field(default_factory=list)   # a fresh list per instance

k = Kennel()
k.dogs.append('Rex')
k
```
