local M = {
  "leoluz/nvim-dap-go",
  commit = "5511788255c92bdd845f8d9690f88e2e0f0ff9f2",
  event = "VeryLazy",
}

function M.config()
  require("dap-go").setup()
end

return M
