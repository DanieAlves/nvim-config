return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Oil",
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Abrir Oil (explorador de arquivos)" },
  },
  opts = {
    default_file_explorer = true,
    view_options = { show_hidden = true },
    keymaps = {
      ["<CR>"] = "actions.select",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-h>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["-"] = "actions.parent",
    },
  },
}