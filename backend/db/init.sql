-- Run only on initial database creation by Postgres entrypoint
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
