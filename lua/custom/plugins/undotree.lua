return {
  'mbbill/undotree',
  event = 'VeryLazy',
  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree' }),
}
