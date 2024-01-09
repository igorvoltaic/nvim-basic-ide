local M = {
  "folke/tokyonight.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764",
}

function M.config()
  vim.cmd.colorscheme "tokyonight"
end

return M
