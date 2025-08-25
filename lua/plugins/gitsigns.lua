return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add          = { text = "▎" },
      change       = { text = "▎" },
      delete       = { text = "契" },
      topdelete    = { text = "契" },
      changedelete = { text = "▎" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,     
    word_diff = false,  
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    current_line_blame = false,
    attach_to_untracked = true,
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)

    -- Keymaps básicos
    vim.keymap.set("n", "]c", function()
      if vim.wo.diff then return "]c" end
      require("gitsigns").nav_hunk("next")
    end, { desc = "next modification" })

    vim.keymap.set("n", "[c", function()
      if vim.wo.diff then return "[c" end
      require("gitsigns").nav_hunk("prev")
    end, { desc = "prev modification" })

    vim.keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
    vim.keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
    vim.keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
  end,
}