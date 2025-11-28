# Repository Guidelines

## Project Structure &amp; Module Organization
The repository is a Markdown-only knowledge base. `README.md` is the canonical log, organized chronologically with top-level sections like **Review** (weekly, monthly, yearly highlights) followed by dated link dumps. Use existing month headers (e.g., `## 2025-10`) and day markers (`02`, `15`, etc.) when adding material. `CLAUDE.local.md` stores assistant-specific context; update it only when automation policy changes. There are no src/test directories, so keep all curated content in the root Markdown files.

## Build, Test, and Development Commands
No build pipeline exists; edits are manual. Helpful local commands:
```bash
rg "keyword" README.md        # locate related references before adding duplicates
tail -n 60 README.md          # review the latest entries
git diff README.md            # verify formatting before committing
```
Run commands from the repository root.

## Coding Style &amp; Naming Conventions
Write in plain Markdown with 80–100 character lines when possible. Each link entry should follow the pattern `https://example.com/article , short two-clause insight`. Use comma + space to separate the URL from the annotation, and keep commentary to one or two sentences. Group new links under the correct year-month heading, and append day numbers as existing sections do. When starting a fresh day inside a month section, put the day-of-month on its own line (e.g., `14`), leave a blank line, then list the links so the chronology reads top-to-bottom. For nested bullets (rare), indent by two spaces. Avoid HTML unless Markdown cannot express the layout.
Keep day markers in ascending order (e.g., `02`, `04`, `06`, `07`, `13`, `14`) when inserting new entries; if the target day already exists, append the link under that heading instead of creating a duplicate marker.

## Testing Guidelines
There are no automated tests, but perform a quick quality sweep: open each new link to ensure it resolves, spell-check annotations, and confirm chronological placement. Optionally run `npx markdown-link-check README.md` if Node.js is available, or `markdownlint README.md` when lint rules are configured locally. Document any intentionally dead or paywalled link in the commit message.

## Commit &amp; Pull Request Guidelines
Commits should be terse English verbs (2–3 words) such as `add links`, `update review`, or `fix format`. Submit a single logical change per commit. Pull requests must describe the scope (e.g., "Added five October 2025 links and refreshed weekly review"), list any tooling used, and mention checks performed. Include screenshots only when demonstrating rendered Markdown differences. Request review if modifying `CLAUDE.local.md` or changing repository conventions.

## Content Quality Checklist
Before requesting review, ensure each entry answers "Why reread?" with a concrete takeaway, avoid duplicate URLs, and prefer canonical sources over mirrors. When revisiting older notes, flag significant updates with `(updated YYYY-MM)` to preserve context without deleting prior commentary.

## Terminology Preferences
- Favor all-lowercase wording in annotations when stylistically acceptable (e.g., `gtd` instead of `GTD`).

## 提交策略
- 先清理代码，然后提交改动。简单改动直接提交，复杂改动看 diff 分次提交。

## Date Context
When adding entries, always run `date +%Y-%m-%d` to get the current date and determine the correct year-month section (e.g., `## 2025-10`) and day marker (just the day number like `19`). Never assume or guess the date.

## Standard Workflow for Adding Links
1. Run `date +%Y-%m-%d` to get current date
2. Add link and annotation to README.md (fix grammar/typos in annotation but preserve case)
3. Commit changes with `git add` and `git commit`
4. Push with `git push`

## Language Requirements
- All annotations must be in English. If user provides Chinese annotation, translate it to English before adding.
