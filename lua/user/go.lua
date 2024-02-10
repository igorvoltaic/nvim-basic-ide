local M = {
  "ray-x/go.nvim",
  commit = "d748e79011437d5b080006b896b3c296656641d7",
}

function M.config()
  require("go").setup()
end

return M
