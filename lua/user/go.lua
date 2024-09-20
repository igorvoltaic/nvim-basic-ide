local M = {
  "ray-x/go.nvim",
  commit = "d748e79011437d5b080006b896b3c296656641d7",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()'
}

function M.config()
  require("go").setup()
end

return M
