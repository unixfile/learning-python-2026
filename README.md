# Learning Python

A course in Python programming. New lessons added as the course progresses.

## Contents

| Lesson | Date | Slides | Notebook |
|--------|------|--------|----------|
| 1 | 2026-05-12 18:30 | [lesson1.pdf](https://unixfile.github.io/learning-python-2026/lesson1.pdf) | [lesson1.ipynb](https://unixfile.github.io/learning-python-2026/lesson1.ipynb) |
| 2 | 2026-05-19 18:30 | [lesson2.pdf](https://unixfile.github.io/learning-python-2026/lesson2.pdf) | [lesson2.ipynb](https://unixfile.github.io/learning-python-2026/lesson2.ipynb) |
| 3 | 2026-05-26 18:30 | [lesson3.pdf](https://unixfile.github.io/learning-python-2026/lesson3.pdf) | [lesson3.ipynb](https://unixfile.github.io/learning-python-2026/lesson3.ipynb) |

## Get the material

Clone the repo:

```
git clone https://github.com/unixfile/learning-python-2026
cd learning-python-2026
```

Or download a ZIP from the GitHub page.

## Build

The easiest way to build is with Docker, which handles all dependencies:

```sh
docker build -t learning-python-2026 .
docker run --rm --user "$(id -u):$(id -g)" -v "$PWD":/work learning-python-2026 make
```

Or, if you have [uv](https://docs.astral.sh/uv/) and [pandoc](https://pandoc.org) installed natively:

```sh
make
```

## Run a notebook

```
uvx jupyter notebook <notebook>  # eg build/lesson1.ipynb
```

This opens the notebook in your browser. Run cells with Shift+Enter.

---

Held by Frans for [Stockholms IT-förening](https://stockholmsitforening.se/).

## Links

[uv installation](https://docs.astral.sh/uv/getting-started/installation/)  
[uv shell autocompletion](https://docs.astral.sh/uv/getting-started/installation/#shell-autocompletion)  
[PyPI, Python Package Index](https://pypi.org)

[Python documentation](https://docs.python.org/3/)  
[Python keywords](https://docs.python.org/3/reference/lexical_analysis.html#keywords)  
[Python built-in functions](https://docs.python.org/3/library/functions.html)
