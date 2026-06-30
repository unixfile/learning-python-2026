# Learning Python

A course in Python programming. New lessons added as the course progresses.

## Contents

| Lesson | Date | Slides | Notebook |
|--------|------|--------|----------|
| 1 | 2026-05-12 18:30 | [lesson1.pdf](https://unixfile.github.io/learning-python-2026/lesson1.pdf) | [lesson1.ipynb](https://unixfile.github.io/learning-python-2026/lesson1.ipynb) |
| 2 | 2026-05-19 18:30 | [lesson2.pdf](https://unixfile.github.io/learning-python-2026/lesson2.pdf) | [lesson2.ipynb](https://unixfile.github.io/learning-python-2026/lesson2.ipynb) |
| 3 | 2026-05-26 18:30 | [lesson3.pdf](https://unixfile.github.io/learning-python-2026/lesson3.pdf) | [lesson3.ipynb](https://unixfile.github.io/learning-python-2026/lesson3.ipynb) |
| 4 | 2026-06-02 18:30 | [lesson4.pdf](https://unixfile.github.io/learning-python-2026/lesson4.pdf) | [lesson4.ipynb](https://unixfile.github.io/learning-python-2026/lesson4.ipynb) |
| 5 | 2026-06-09 18:30 | [lesson5.pdf](https://unixfile.github.io/learning-python-2026/lesson5.pdf) | [lesson5.ipynb](https://unixfile.github.io/learning-python-2026/lesson5.ipynb) |
| 6 | 2026-06-16 18:30 | [lesson6.pdf](https://unixfile.github.io/learning-python-2026/lesson6.pdf) | [lesson6.ipynb](https://unixfile.github.io/learning-python-2026/lesson6.ipynb) |
| 7 | 2026-06-23 18:30 | [lesson7.pdf](https://unixfile.github.io/learning-python-2026/lesson7.pdf) | [lesson7.ipynb](https://unixfile.github.io/learning-python-2026/lesson7.ipynb) |
| 8 | 2026-06-30 18:30 | [lesson8.pdf](https://unixfile.github.io/learning-python-2026/lesson8.pdf) | [lesson8.ipynb](https://unixfile.github.io/learning-python-2026/lesson8.ipynb) |

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

Or, if you have [uv](https://docs.astral.sh/uv/), [pandoc](https://pandoc.org), and `make` installed natively:

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
