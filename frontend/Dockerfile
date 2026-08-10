FROM oven/bun:latest

WORKDIR /app

# Copy package files and install during build for faster container startup
COPY frontend/package.json frontend/package-lock.json* bun.lockb* ./
RUN bun install || true

# Copy source
COPY frontend /app

EXPOSE 5173

# At runtime, if the host bind mount hides installed deps, run bun install
# before starting the dev server so the container works both with and without
# a bind mount for development.
CMD ["sh", "-lc", "bun install || true && bun run dev -- --host"]
