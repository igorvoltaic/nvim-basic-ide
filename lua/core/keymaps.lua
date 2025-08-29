local keymap = require('core.utils').keymap

keymap('n', '<leader>w', '<cmd>w<CR>', { desc = '[W]rite current buffer' })

-- Stay in indent mode
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>')
keymap('n', '<S-h>', ':bprevious<CR>')
keymap('n', '<S-q>', '<cmd>bd<CR>', { desc = '[Q]uit current buffer' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- keymap("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- keymap("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- keymap("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- keymap("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

keymap('n', '<leader>pS', '<cmd>Lazy clear<cr>', { desc = 'Status' })
keymap('n', '<leader>pc', '<cmd>Lazy clean<cr>', { desc = 'Clean' })
keymap('n', '<leader>pd', '<cmd>Lazy debug<cr>', { desc = 'Debug' })
keymap('n', '<leader>pi', '<cmd>Lazy install<cr>', { desc = 'Install' })
keymap('n', '<leader>pl', '<cmd>Lazy log<cr>', { desc = 'Log' })
keymap('n', '<leader>pp', '<cmd>Lazy profile<cr>', { desc = 'Profile' })
keymap('n', '<leader>ps', '<cmd>Lazy sync<cr>', { desc = 'Sync' })
keymap('n', '<leader>pu', '<cmd>Lazy update<cr>', { desc = 'Update' })
