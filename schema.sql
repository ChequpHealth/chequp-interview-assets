-- CheqUp round-two exercise — starting schema
--
-- A starting point you own and may change. It is intentionally minimal:
-- adapt, extend, or replace it as your design requires.
--
-- Written for PostgreSQL. If you chose SQLite, adapt the types
-- (e.g. JSONB -> TEXT, TIMESTAMPTZ -> TEXT/DATETIME).

CREATE TABLE members (
    id          TEXT PRIMARY KEY,
    name        TEXT NOT NULL,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE submissions (
    id          TEXT PRIMARY KEY,
    member_id   TEXT NOT NULL REFERENCES members(id),
    answers     JSONB NOT NULL,   -- the member's raw answers
    outcome     TEXT,             -- the computed result
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Two seeded members, matching the ids used by the X-Member-Id auth, so you can
-- exercise authentication and any per-member access rules.
INSERT INTO members (id, name) VALUES
    ('member-001', 'Ada'),
    ('member-002', 'Grace');
