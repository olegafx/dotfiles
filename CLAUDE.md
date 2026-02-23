# Dotfiles

## Stow

Config files are managed with GNU Stow. The `home/` directory mirrors `~/`.

- Place config files in `home/.config/<app>/` (not directly in the repo root).
- Run `stow home -t ~` to create symlinks.
- Never create symlinks manually.

## Commits

- Follow conventional commits: `chore(scope): description`.
- Always include a scope. Use the app or folder name when changes share a common area (e.g. `ghostty`, `zsh`). For broader changes, use a general scope (e.g. `dotfiles`, `tools`).
- Don't push without asking.

## Packages

- Add new brew packages to `Brewfile`.
- Zsh plugins are cloned to `~/code/`, not installed via brew.

## Secrets

- Never hardcode tokens or secrets in config files.
- Use 1Password CLI (`op`) for secrets. Wrap unsupported tools with a function that calls `op read`.
