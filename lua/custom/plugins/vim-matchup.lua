return {
  'andymass/vim-matchup',
  opts = function()
    vim.g.matchup_matchparen_offscreen = { method = 'popup' }
  end,
}
