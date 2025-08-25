return {
  "simrat39/rust-tools.nvim",
  ft = { "rust" },
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    local rt = require("rust-tools")

    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          local map = function(keys, func)
            vim.keymap.set("n", keys, func, { buffer = bufnr, silent = true })
          end

          map("K", rt.hover_actions.hover_actions) 
          map("<leader>ca", rt.code_action_group.code_action_group)
        end,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
          },
        },
      },
    })
  end,
}