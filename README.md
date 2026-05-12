# Learning Python

A course in Python programming. New lessons added as the course progresses.

## Contents

| File | Description |
|------|-------------|
| `lessonN.md` | Slide source for lesson N |
| `lessonN.ipynb` | Interactive notebook for lesson N |
| `build/lessonN.pdf` | Slides (PDF) |

## Get the material

Clone the repo:

```
git clone https://github.com/unixfile/learning-python-2026
cd learning-python-2026
```

Or download a ZIP from the GitHub page.

## Run a notebook

No installation needed. Run with [uv](https://docs.astral.sh/uv/):

```
uvx jupyter notebook lesson1.ipynb
```

This opens the notebook in your browser. Run cells with Shift+Enter.

## Build the slides from source

```
make
```

Requires [uv](https://docs.astral.sh/uv/) and [pandoc](https://pandoc.org).

---

Held by Frans for [Stockholms IT-förening](https://stockholmsitforening.se/).
