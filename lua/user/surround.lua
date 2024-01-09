local M = {
  "kylechui/nvim-surround",
  commit = "6aafeeda19a98768d1c17ff6dde5548bc77a1a2d",
  event = "VeryLazy",
  lazy = false,
}

function M.config()
  require("nvim-surround").setup {}
end

return M
