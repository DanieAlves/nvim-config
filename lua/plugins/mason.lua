return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ui = { border = "rounded" },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = {
        "rust_analyzer",
        "lua_ls",
        "bashls",
        "jsonls",
        "taplo",
      },
      automatic_installation = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(_, bufnr)
        local map = function(keys, func)
          vim.keymap.set("n", keys, func, { buffer = bufnr, silent = true })
        end
        map("gd", vim.lsp.buf.definition)
        map("K", vim.lsp.buf.hover)
        map("gr", vim.lsp.buf.references)
        map("<leader>rn", vim.lsp.buf.rename)
        map("<leader>ca", vim.lsp.buf.code_action)
      end

      local servers = { "rust_analyzer", "lua_ls", "bashls", "jsonls", "taplo" }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
    end,
  },
}