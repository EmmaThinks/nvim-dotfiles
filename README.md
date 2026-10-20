# NVIM DOTFILES

There's nothing else to say, just a simple minimal config for nvim so i can copy it anytime i want.

## Features

- LSP (Rust, C, C++, BASH, Python)
- Treesiter
- Yazi as file manager with `space + e`
- Overseer (and commands for compiling and running files with gcc and cargo)
- Everforest theme

## Keybindings

The leader key is mapped to `<Space>`.

### Yazi

| Keybinding | Action |
| :--- | :--- |
| `<leader>e` | Open **Yazi** file manager at current file |
| `<leader>cw` | Open **Yazi** at workspace / project root |

### LSP and Code

| Keybinding | Action |
| :--- | :--- |
| `gd` | Go to definition |
| `K` | Show hover documentation / function signature |
| `<leader>ca` | Code action (quickfix, imports) |
| `<leader>rn` | Rename symbol under cursor |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |

### Build, Run and Tasks (Overseer)

| Keybinding | Action |
| :--- | :--- |
| `<leader>rc` | Compile and execute current C file (`gcc -Wall -Wextra -O2`) |
| `<leader>rb` | Run project using `cargo run` |
| `<leader>rs` | Execute compiled binary with `sudo` in interactive split |
| `<leader>rr` | Select and run detected tasks/scripts (Makefile, Cargo, etc.) |
| `<leader>ro` | Toggle task runner output and status window |

### Markdown Preview

| Keybinding | Action |
| :--- | :--- |
| `<leader>mt` | Toggle inline Markdown rendering |
| `<leader>mp` | Toggle live browser preview (if configured) |
