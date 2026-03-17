# Contributing to AutoStrike

## Objective

AutoStrike is a breach and attack simulation platform.
All contributions must adhere to a strict framework:
- No actual destructive actions
- Only controlled simulations
- Compliance with security best practices

---

## Setup

Clone the repository:

git clone https://github.com/AutoStrike-EIP/AutoStrike.git
cd autostrike

Build the project:

cargo build --workspace

---

## Guidelines

- Idiomatic Rust code
- Compliance with standards (rustfmt, clippy)
- No unnecessary dependencies
- Readable and documented code
- No dangerous logic (no actual malicious execution)

---

## Contribution Workflow

1. Fork the repository
2. Create a branch:

git checkout -b feature/feature-name

3. Development
4. Clear commit message:

git commit -m “feat: add new simulation module”

5. Push:

git push origin feature/feature-name

6. Open a Pull Request

---

## Commit conventions

Use explicit messages:

- feat: new feature
- fix: bug fix
- refactor: improvement without functional changes
- docs: documentation
- chore: maintenance

---

## Code Quality

Before any PR:

cargo fmt
cargo clippy -- -D warnings
cargo build

---

## Scope of Contributions

Accepted:
- new simulation scenarios
- performance improvements
- bug fixes
- documentation improvements

Rejected:
- destructive code
- real-world offensive tools
- Features outside the BAS scope

---

## Questions

Use GitHub Discussions or open an issue.