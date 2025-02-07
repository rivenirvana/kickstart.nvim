if not vim.o.diff then
  vim.g.suda_smart_edit = 1
end

return {
  -- Workaround to sudo not working in-editor
  -- https://github.com/neovim/neovim/issues/1716
  'lambdalisue/vim-suda',
}
