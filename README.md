# Round-two exercise — asset pack

Small, stack-agnostic assets for the round-two technical exercise. Take what you need from here into your own project skeleton; you don't build anything in this repo.

## Contents

- `tokens/tokens.css` — CheqUp brand colours, typography, spacing and radius as CSS custom properties. Theme against the variables rather than hardcoding values.
- `locales/en.json` — a message catalogue (dictionary). One string is externalised as the pattern to follow; add your interface strings the same way rather than hardcoding them.
- `brand/logo.png` — the CheqUp logo.
- `schema.sql` — a starting database schema you own and may change. Intentionally minimal; adapt or extend it as your design needs.
- `openapi.yaml` — a baseline describing the auth mechanism and one example route, so you can scaffold an authenticated controller in your chosen stack ahead of the session. It deliberately doesn't describe the questionnaire, scoring, or result endpoints — designing those is part of the exercise.

## Auth

Requests carry an `X-Member-Id` header identifying the current member. Two members are seeded by `schema.sql`: `member-001` and `member-002`. Use this in place of real login — don't build authentication.

## What to do with it

See the prep note you were sent ("what to expect and how to prepare"). In short: before the session, stand up an empty, running skeleton in your chosen stack — apply the schema, wire the auth and a baseline controller from `openapi.yaml`, and pull in the tokens and dictionary. Don't build the feature itself — we do that part live.
