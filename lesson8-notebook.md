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

# Lesson 8

Run cells with Shift+Enter.

## Libraries

```{code-cell} ipython3
import math
math.sqrt(16), math.pi
```

## Importing a library

```{code-cell} ipython3
import re
re.__file__          # where Python loaded the library from
```

## import syntax variants

```{code-cell} ipython3
import re as regex
regex.findall(r'B', 'ABBA')
```

```{code-cell} ipython3
from re import search
search(r'A', 'ABBA').group()
```

## How Python finds libraries

```{code-cell} ipython3
import sys
sys.path             # searched top to bottom; first match wins
```

## Installing packages with uv

Package management happens in the shell, not the notebook:

```sh
uv add requests      # add a dependency to the project
uv run script.py     # run with the project's packages
uvx ruff             # run a tool without installing it
```

`sys.executable` shows which interpreter, and so which set of
installed packages, is currently active:

```{code-cell} ipython3
import sys
sys.executable
```

## The uv project workflow

`uv init` scaffolds a new project; `uv add` installs into it and
records the result. We build it in a temp dir, outside this git
repo, so uv also writes the `.gitignore` it makes for new projects.

```{code-cell} ipython3
import os, tempfile, shutil
demo = os.path.join(tempfile.gettempdir(), 'demoproj')
shutil.rmtree(demo, ignore_errors=True)   # start clean if rerun
!uv init {demo}
!ls -a {demo}
```

```{code-cell} ipython3
!cat {demo}/.gitignore   # uv ignores .venv and __pycache__ for you
```

```{code-cell} ipython3
!cd {demo} && uv add rich   # download rich from PyPI into .venv
```

```{code-cell} ipython3
!cat {demo}/pyproject.toml   # the dependency is now recorded
```

```{code-cell} ipython3
!head -n 15 {demo}/uv.lock   # exact versions, pinned for reproducibility
```

```{code-cell} ipython3
!ls {demo}/.venv   # the regenerated, git-ignored virtual env
```

## Using a package from PyPI

```{code-cell} ipython3
try:
    import rich
    rich.print('[bold]hello[/] world')
except ImportError:
    print('run  uv add rich  first')
```

## Modules

```{code-cell} ipython3
%%writefile greetings.py
def hello(name):
    return f'Hello, {name}!'
```

```{code-cell} ipython3
import greetings
greetings.hello('Alice')   # name is the filename without .py
```

## The module guard pattern

```{code-cell} ipython3
__name__             # at the notebook top level this is '__main__'
```

```{code-cell} ipython3
%%writefile runme.py
def hello(name):
    return f'Hello, {name}!'

if __name__ == '__main__':
    print('run directly:', hello('world'))
```

```{code-cell} ipython3
!python3 runme.py    # executed directly: the guard fires
```

```{code-cell} ipython3
import runme         # imported: the guard does NOT fire (no print)
runme.hello('Bob')
```

## The main function pattern

```{code-cell} ipython3
%%writefile main_demo.py
def main():
    print('Hello from main')

if __name__ == '__main__':
    main()
```

```{code-cell} ipython3
!python3 main_demo.py
```

## Packages and __init__.py

```{code-cell} ipython3
!mkdir -p mathpkg
```

```{code-cell} ipython3
%%writefile mathpkg/adder.py
def add(a, b):
    return a + b
```

```{code-cell} ipython3
%%writefile mathpkg/multiplier.py
def mul(a, b):
    return a * b
```

```{code-cell} ipython3
%%writefile mathpkg/__init__.py
from .adder import add
from .multiplier import mul
```

```{code-cell} ipython3
import mathpkg
mathpkg.add(2, 3), mathpkg.mul(2, 3)   # re-exported by __init__.py
```

## Controlling star imports with __all__

```{code-cell} ipython3
%%writefile tools.py
__all__ = ['foo', 'bar']

def foo():
    return 'foo'

def bar():
    return 'bar'

def _helper():
    return 'helper'
```

```{code-cell} ipython3
from tools import *
foo(), bar()         # only the names listed in __all__ arrive
```

```{code-cell} ipython3
_helper()            # not exported (expected NameError)
```

## Subpackages

```{code-cell} ipython3
!mkdir -p mathpkg/stats
```

```{code-cell} ipython3
%%writefile mathpkg/stats/__init__.py
# marks mathpkg/stats as a subpackage
```

```{code-cell} ipython3
%%writefile mathpkg/stats/mean.py
def mean(xs):
    return sum(xs) / len(xs)
```

```{code-cell} ipython3
from mathpkg.stats.mean import mean
mean([2, 4, 6])
```

## Running modules with -m

```{code-cell} ipython3
!python3 -m calendar 2026 6   # run a stdlib module as a script
```
