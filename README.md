# Neovim Config

Neovim config for **Rust**, but work for Lua, Bash, JSON e TOML.  

---

## ⚡ Plugins

- **Oil.nvim** → File explorer  
- **fzf-lua** → Search archives (`<leader>ff`), text (`<leader>fg`) buffers (`<leader>fb`)  
- **Mason + nvim-lspconfig** → Gerencia LSPs (`rust-analyzer`, `lua_ls`, etc.)  
- **rust-tools.nvim** → Rust tools  
- **nvim-cmp + cmp-nvim-lsp** → Autocompletion   
- **nvim-treesitter** → Syntax highlighting   
- **gitsigns.nvim** → Git inline signs  
- **lualine.nvim** → Statusline 

---

## ⌨️ Keymaps Principais

### Arquivos / Navegação
| Tecla | Função |
|-------|--------|
| `-` | Abrir Oil |
| `<CR>` | Abrir arquivo |
| `<C-s>` | VSplit |
| `<C-h>` | Split |
| `<C-t>` | Abrir em nova tab |
| `<leader>ff` | Buscar arquivos |
| `<leader>fg` | Buscar texto |
| `<leader>fb` | Buffers abertos |

### Rust / LSP
| Tecla | Função |
|-------|--------|
| `gd` | Ir para definição |
| `gr` | Referências |
| `K` | Hover |
| `<leader>rn` | Renomear |
| `<leader>ca` | Code actions |

### Git
| Tecla        | Função        |
| ------------ | ------------- |
| `]c`         | Próximo hunk  |
| `[c`         | Hunk anterior |
| `<leader>hs` | Stage hunk    |
| `<leader>hr` | Reset hunk    |
| `<leader>hp` | Preview hunk  |

---

## 🚀 Instalação Rápida

```bash
git clone https://github.com/seu-usuario/nvim-config.git ~/.config/nvim
nvim --headless +Lazy sync +qa
```
