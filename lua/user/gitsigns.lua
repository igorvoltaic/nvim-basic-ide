local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "Gitsigns",
}
M.config = function()
  local icons = require "user.icons"

  local wk = require "which-key"
  wk.add {
    { "<leader>gB", "<cmd>Gitsigns blame<cr>", desc = "Blame" },
    { "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset Buffer" },
    { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Git Diff" },
    { "<leader>gj", "<cmd>Gitsigns next_hunk<cr>", desc = "Next Hunk" },
    { "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>", desc = "Prev Hunk" },
    { "<leader>gl", "<cmd>Gitsigns blame_line<cr>", desc = "Blame Line" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview Hunk" },
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset Hunk" },
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage Hunk" },
    { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Undo Stage Hunk" },
  }

  require("gitsigns").setup {
    signs = {
      add = { text = icons.ui.BoldLineMiddle },
      change = { text = icons.ui.BoldLineDashedMiddle },
      delete = { text = icons.ui.TriangleShortArrowRight },
      topdelete = { text = icons.ui.TriangleShortArrowRight },
      changedelete = { text = icons.ui.BoldLineMiddle },
    },
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    update_debounce = 200,
    max_file_length = 40000,
    preview_config = {
      border = "rounded",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  }
end

return M
