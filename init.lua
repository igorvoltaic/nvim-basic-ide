--[[

	Compiled together by Igor Voltaic

--]]

-- Set ',' as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
--  See `:help vim.o`
require 'core.options'

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()` and lua/core/utils.lua file
require 'core.keymaps'

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
require 'core.autocommands'
--
-- [[ Install `lazy.nvim` plugin manager ]]
--  See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
require 'core.lazy'

-- [[ Configure and install plugins ]]
--  Type `,pS` check the current status of your plugins

-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  require 'core.colorscheme',

  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).

  -- NOTE: Plugins can also be added by using a table,

  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.

  -- See the configurations in the lua/plugins dir
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `,sh` then write `lazy.nvim-plugin`

  -- 'require' is picked over { import = 'plugins.plugin-name' } because it's feels easier to debug

  require 'plugins.guess-indent-nvim',
  require 'plugins.which-key-nvim',
  require 'plugins.telescope-nvim',
  require 'plugins.lazydev',
  require 'plugins.nvim-lspconfig',
  require 'plugins.conform-nvim',
  require 'plugins.blink',
  require 'plugins.todo-comments',
  require 'plugins.mini-nvim',
  require 'plugins.nvim-surround',
  require 'plugins.nvim-treesitter',
  require 'plugins.nvim-lint',
  require 'plugins.nvim-tree',
  require 'plugins.gitsigns-nvim',

  -- NOTE: Add/Configure additional plugins

  -- require 'plugins.nvim-dap',
  -- require 'plugins.indent-blankline-nvim',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or require('core.icons').lazy,
  },
})

--[[

 Inspired by:

 Kickstart.nvim
  NOTE: I hope you enjoy your Neovim journey,
 - TJ

 Launch.nvim:
  NOTE: The computing scientist's main challenge is not to get confused by the complexities of his own making.
 - Edsger W. Dijkstra

--]]
