FROM python:3.12-slim

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Copy the application into the container.
COPY . /app

# Install the application dependencies. uv expects pyproject.toml in CWD,
# so switch into the `backend` subdirectory where `pyproject.toml` lives.
WORKDIR /app/backend
RUN uv sync --frozen --no-cache

# Ensure runtime modules are available in system python (avoid symlink issues)
RUN pip install --no-cache-dir fastapi[standard] uvicorn

# Run the application. Set runtime workdir to `/app` so `main.py` is importable.
WORKDIR /app
CMD ["python", "-m", "uvicorn", "main:app", "--port", "80", "--host", "0.0.0.0"]