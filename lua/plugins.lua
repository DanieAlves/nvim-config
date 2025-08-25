return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({ ensure_installed = { "rust_analyzer" } })
    end,
  },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp", event = "InsertEnter" },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            local opts = { buffer = bufnr }
            vim.keymap.set("n", "<leader>h", rt.hover_actions.hover_actions, opts)
            vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, opts)
          end,
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = { "rust", "toml", "lua", "bash", "json" },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
  { "lewis6991/gitsigns.nvim", event = "BufReadPost" },
  { "tpope/vim-fugitive", cmd = "Git" },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = { options = { theme = "gruvbox", icons_enabled = false } },
  },
  { "echasnovski/mini.nvim", version = '*' },
  {
	  "stevearc/oil.nvim",
	  opts = {},
	  dependencies = { { "echasnovski/mini.icons", opts = {} } },
	  lazy = false,
  },
}
