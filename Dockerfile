FROM pandoc/latex:latest

ENTRYPOINT []

RUN apk add --no-cache curl ca-certificates make

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /work
