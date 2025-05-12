return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = {
    {
      'echasnovski/mini.icons',
      -- "nvim-tree/nvim-web-devicons", -- alternative
      opts = {},
    },
  },
  lazy = false,
  keys = {
    { '-', '<CMD>Oil --float<CR>', desc = 'Oil: Open parent directory' },
  },
}
