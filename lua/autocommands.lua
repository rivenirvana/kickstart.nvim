vim.api.nvim_create_autocmd({ 'VimEnter', 'VimResume' }, {
  group = vim.api.nvim_create_augroup('KittySetVarVimEnter', { clear = true }),
  callback = function()
    io.stdout:write '\x1b]30001\x1b\\'
    io.stdout:write '\x1b]1337;SetUserVar=KITTY_IN_NVIM=MQ==\007'
  end,
})

vim.api.nvim_create_autocmd({ 'VimLeave', 'VimSuspend' }, {
  group = vim.api.nvim_create_augroup('KittyUnsetVarVimLeave', { clear = true }),
  callback = function()
    io.stdout:write '\x1b]1337;SetUserVar=KITTY_IN_NVIM\007'
    io.stdout:write '\x1b]30101\x1b\\'
  end,
})
