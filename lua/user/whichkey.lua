local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

function M.config()

  local wk = require "which-key"

  wk.setup {
    plugins = {
      marks = false, -- shows a list of your marks on ' and `
      registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = true,
        suggestions = 20,
      }, -- use which-key for spelling hints
      presets = {
        operators = false, -- adds help for operators like d, y, ...
        motions = false, -- adds help for motions
        text_objects = false, -- help for text objects triggered after entering an operator
        win = false, -- default bindings on <c-w>
        nav = false, -- misc bindings to work with windows
        z = false, -- bindings for folds, spelling and others prefixed with z
        g = false, -- bindings for prefixed with g
      },
    },
    keys = {
      scroll_down = "<c-d>", -- binding to scroll down inside the popup
      scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
      align = "left", -- align columns left, center or right
    },
    show_help = true, -- show help message on the command line when the popup is visible
    show_keys = true, -- show the currently pressed key and its label as a message in the command line
    triggers = {"<leader>"}, -- or specify a list manually
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  wk.add {
    { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment", nowait = true, remap = false },
    { "<leader>T", group = "Treesitter", nowait = true, remap = false },
    { "<leader>Ti", ":TSConfigInfo<cr>", desc = "Info", nowait = true, remap = false },
    { "<leader>b", group = "Buffers", nowait = true, remap = false },
    { "<leader>bb", "<cmd>Telescope buffers previewer=false<cr>", desc = "Find", nowait = true, remap = false },
    { "<leader>d", group = "Debug", nowait = true, remap = false },
    { "<leader>dC", "<cmd>lua require'dap'.run_to_cursor()<cr>", desc = "Run To Cursor", nowait = true, remap = false },
    { "<leader>dU", "<cmd>lua require'dapui'.toggle({reset = true})<cr>", desc = "Toggle UI", nowait = true, remap = false },
    { "<leader>db", "<cmd>lua require'dap'.step_back()<cr>", desc = "Step Back", nowait = true, remap = false },
    { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue", nowait = true, remap = false },
    { "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", desc = "Disconnect", nowait = true, remap = false },
    { "<leader>dg", "<cmd>lua require'dap'.session()<cr>", desc = "Get Session", nowait = true, remap = false },
    { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", desc = "Step Into", nowait = true, remap = false },
    { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", desc = "Step Over", nowait = true, remap = false },
    { "<leader>dp", "<cmd>lua require'dap'.pause()<cr>", desc = "Pause", nowait = true, remap = false },
    { "<leader>dq", "<cmd>lua require'dap'.close()<cr>", desc = "Quit", nowait = true, remap = false },
    { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", desc = "Toggle Repl", nowait = true, remap = false },
    { "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", desc = "Start", nowait = true, remap = false },
    { "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint", nowait = true, remap = false },
    { "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", desc = "Step Out", nowait = true, remap = false },
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Explorer", nowait = true, remap = false },
    { "<leader>f", group = "Find", nowait = true, remap = false },
    { "<leader>fC", "<cmd>Telescope commands<cr>", desc = "Commands", nowait = true, remap = false },
    { "<leader>fH", "<cmd>Telescope highlights<cr>", desc = "Highlights", nowait = true, remap = false },
    { "<leader>fM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages", nowait = true, remap = false },
    { "<leader>fR", "<cmd>Telescope registers<cr>", desc = "Registers", nowait = true, remap = false },
    { "<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch", nowait = true, remap = false },
    { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme", nowait = true, remap = false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", nowait = true, remap = false },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help", nowait = true, remap = false },
    { "<leader>fi", "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", desc = "Media", nowait = true, remap = false },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps", nowait = true, remap = false },
    { "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Last Search", nowait = true, remap = false },
    { "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<cr>", desc = "Projects", nowait = true, remap = false },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent File", nowait = true, remap = false },
    { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Find String", nowait = true, remap = false },
    { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Find Text", nowait = true, remap = false },
    { "<leader>gC", "<cmd>Telescope git_bcommits<cr>", desc = "Checkout commit(for current file)", nowait = true, remap = false },
    { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch", nowait = true, remap = false },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit", nowait = true, remap = false },
    { "<leader>go", "<cmd>Telescope git_status<cr>", desc = "Open changed file", nowait = true, remap = false },
    { "<leader>h", "<cmd>nohlsearch<CR>", desc = "No Highlight", nowait = true, remap = false },
    { "<leader>l", group = "LSP", nowait = true, remap = false },
    { "<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info", nowait = true, remap = false },
    { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols", nowait = true, remap = false },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action", nowait = true, remap = false },
    { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", desc = "Buffer Diagnostics", nowait = true, remap = false },
    { "<leader>le", "<cmd>Telescope quickfix<cr>", desc = "Telescope Quickfix", nowait = true, remap = false },
    { "<leader>lf", "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000000})<cr>", desc = "Format", nowait = true, remap = false },
    { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info", nowait = true, remap = false },
    { "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic", nowait = true, remap = false },
    { "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic", nowait = true, remap = false },
    { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action", nowait = true, remap = false },
    { "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<cr>", desc = "Quickfix", nowait = true, remap = false },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename", nowait = true, remap = false },
    { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols", nowait = true, remap = false },
    { "<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics", nowait = true, remap = false },
    { "<leader>p", group = "Plugins", nowait = true, remap = false },
    { "<leader>pS", "<cmd>Lazy clear<cr>", desc = "Status", nowait = true, remap = false },
    { "<leader>pc", "<cmd>Lazy clean<cr>", desc = "Clean", nowait = true, remap = false },
    { "<leader>pd", "<cmd>Lazy debug<cr>", desc = "Debug", nowait = true, remap = false },
    { "<leader>pi", "<cmd>Lazy install<cr>", desc = "Install", nowait = true, remap = false },
    { "<leader>pl", "<cmd>Lazy log<cr>", desc = "Log", nowait = true, remap = false },
    { "<leader>pp", "<cmd>Lazy profile<cr>", desc = "Profile", nowait = true, remap = false },
    { "<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync", nowait = true, remap = false },
    { "<leader>pu", "<cmd>Lazy update<cr>", desc = "Update", nowait = true, remap = false },
    { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit", nowait = true, remap = false },
    { "<leader>t", group = "Tab", nowait = true, remap = false },
    { "<leader>tA", "<cmd>tabnew %<cr>", desc = "New Tab", nowait = true, remap = false },
    { "<leader>ta", "<cmd>$tabnew<cr>", desc = "New Empty Tab", nowait = true, remap = false },
    { "<leader>th", "<cmd>-tabmove<cr>", desc = "Move Left", nowait = true, remap = false },
    { "<leader>tl", "<cmd>+tabmove<cr>", desc = "Move Right", nowait = true, remap = false },
    { "<leader>tn", "<cmd>tabn<cr>", desc = "Next", nowait = true, remap = false },
    { "<leader>to", "<cmd>tabonly<cr>", desc = "Only", nowait = true, remap = false },
    { "<leader>tp", "<cmd>tabp<cr>", desc = "Prev", nowait = true, remap = false },
    { "<leader>tt", "<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>", desc = "Find Tab", nowait = true, remap = false },
  }

end

return M
