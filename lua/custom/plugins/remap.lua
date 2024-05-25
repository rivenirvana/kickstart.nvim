vim.keymap.set('n', '<leader>xn', vim.cmd.Ex, { desc = 'E[X]ec [N]etrw' })
vim.keymap.set('n', '<leader>xs', vim.cmd.so, { desc = 'E[X]ec [S]ource script' })
vim.keymap.set('n', '<leader>xc', '<cmd>!chmod +x %<CR>', { desc = 'E[X]ec [C]hmod +x', silent = true })
vim.keymap.set('n', '<leader>xr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'E[X]ec Search and [R]eplace' })
vim.keymap.set('n', '<leader>xf', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'E[X]ec [F]ind Project' })

vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, { desc = 'vim.lsp.buf.format' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>D', [["_d]])
vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set('i', '<C-c>', '<Esc>')

return {}
