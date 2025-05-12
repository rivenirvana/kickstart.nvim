return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = {
    {
      'nvim-tree/nvim-web-devicons',
      -- 'echasnovski/mini.icons',
      opts = {},
    },
  },
  lazy = false,
  keys = {
    { '-', '<CMD>Oil --float<CR>', desc = 'Oil: Open parent directory' },
  },
}
