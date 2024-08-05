vim.keymap.set('n', '<leader>xn', vim.cmd.Ex, { desc = 'E[X]ec [N]etrw' })
vim.keymap.set('n', '<leader>xs', vim.cmd.so, { desc = 'E[X]ec [S]ource script' })
vim.keymap.set('n', '<leader>xc', '<cmd>!chmod +x %<CR>', { desc = 'E[X]ec [C]hmod +x', silent = true })
vim.keymap.set('n', '<leader>xr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'E[X]ec Search and [R]eplace' })
vim.keymap.set('n', '<leader>xf', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'E[X]ec [F]ind Project' })

vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, { desc = '[F]ormat buffer via LSP' })
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Move visual selection/s to lines below or above them
vim.keymap.set('x', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('x', 'K', ":m '<-2<CR>gv=gv")

-- Quickfix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'Quickfix keymap: No description yet' })
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'Quickfix keymap: No description yet' })

-- Retain cursor postion for:
-- - joining lines
vim.keymap.set('n', 'J', 'mzJ`z')
-- - half-page scrolls
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- - matching searches
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set({ 'n', 'x' }, '<leader>y', [["+y]], { desc = 'Yank selection to system clipboard' })
-- This keymap doesn't seem to work correctly as the register command that it's mapped to. Probably needs to be reported.
-- https://neovim.io/doc/user/change.html#Y-default
vim.keymap.set({ 'n', 'x' }, '<leader>Y', [["+Y]], { desc = 'Yank cursor-to-EOL to system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>p', [["+p]], { desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>P', [["+P]], { desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>v', [["_d]], { desc = 'Delete to void' })
vim.keymap.set('x', '<leader>V', [["_dP]], { desc = 'Paste over selection' })

return {}
