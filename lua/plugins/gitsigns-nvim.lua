-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'
        local keymap = require('core.utils').keymap

        local function opts(o)
          o.buffer = bufnr
          return o
        end

        -- Navigation
        keymap('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, opts { desc = 'Jump to next git [c]hange' })

        keymap('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, opts { desc = 'Jump to previous git [c]hange' })

        -- Actions
        -- visual mode
        keymap('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, opts { desc = 'git [s]tage hunk' })
        keymap('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, opts { desc = 'git [r]eset hunk' })
        -- normal mode
        keymap('n', '<leader>hs', gitsigns.stage_hunk, opts { desc = 'git [s]tage hunk' })
        keymap('n', '<leader>hr', gitsigns.reset_hunk, opts { desc = 'git [r]eset hunk' })
        keymap('n', '<leader>hS', gitsigns.stage_buffer, opts { desc = 'git [S]tage buffer' })
        keymap('n', '<leader>hu', gitsigns.stage_hunk, opts { desc = 'git [u]ndo stage hunk' })
        keymap('n', '<leader>hR', gitsigns.reset_buffer, opts { desc = 'git [R]eset buffer' })
        keymap('n', '<leader>hp', gitsigns.preview_hunk, opts { desc = 'git [p]review hunk' })
        keymap('n', '<leader>hb', gitsigns.blame_line, opts { desc = 'git [b]lame line' })
        keymap('n', '<leader>hd', gitsigns.diffthis, opts { desc = 'git [d]iff against index' })
        keymap('n', '<leader>hD', function()
          gitsigns.diffthis '@'
        end, { desc = 'git [D]iff against last commit' })
        -- Toggles
        keymap('n', '<leader>tb', gitsigns.toggle_current_line_blame, opts { desc = '[T]oggle git show [b]lame line' })
        keymap('n', '<leader>tD', gitsigns.preview_hunk_inline, opts { desc = '[T]oggle git show [D]eleted' })
      end,
    },
  },
}
