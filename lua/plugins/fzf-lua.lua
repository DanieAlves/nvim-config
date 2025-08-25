return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "search archives" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "search text (ripgrep)" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "open buffers" },
    { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
  },
  opts = {
    winopts = {
      height = 0.85,
      width = 0.80,
      preview = { layout = "vertical" },
    },
    files = {
      prompt = "Files❯ ",
      fd_opts = [[--color=never --type f --hidden --follow --exclude .git]],
    },
    grep = {
      prompt = "Rg❯ ",
      rg_opts = "--column --line-number --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
    },
  },
}
