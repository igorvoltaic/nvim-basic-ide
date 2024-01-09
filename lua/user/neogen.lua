local M = {
  "danymat/neogen",
  event = "VeryLazy",
  lazy = false,
  requires = "nvim-treesitter/nvim-treesitter",
}

function M.config()
  require("neogen").setup {}
end

return M
