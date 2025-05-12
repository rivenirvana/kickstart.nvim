return {
  'mrjones2014/smart-splits.nvim',
  build = './kitty/install-kittens.bash',
  opts = {
    float_win_behavior = 'mux',
  },
  lazy = false,
  keys = {
    -- resizing splits
    {
      '<A-h>',
      function()
        require('smart-splits').resize_left()
      end,
    },
    {
      '<A-j>',
      function()
        require('smart-splits').resize_down()
      end,
    },
    {
      '<A-k>',
      function()
        require('smart-splits').resize_up()
      end,
    },
    {
      '<A-l>',
      function()
        require('smart-splits').resize_right()
      end,
    },
    -- moving between splits
    {
      '<C-h>',
      function()
        require('smart-splits').move_cursor_left()
      end,
    },
    {
      '<C-j>',
      function()
        require('smart-splits').move_cursor_down()
      end,
    },
    {
      '<C-k>',
      function()
        require('smart-splits').move_cursor_up()
      end,
    },
    {
      '<C-l>',
      function()
        require('smart-splits').move_cursor_right()
      end,
    },
    {
      '<C-\\>',
      function()
        require('smart-splits').move_cursor_previous()
      end,
    },
    -- swapping buffers between windows
    {
      '<leader><leader>h',
      function()
        require('smart-splits').swap_buf_left()
      end,
    },
    {
      '<leader><leader>j',
      function()
        require('smart-splits').swap_buf_down()
      end,
    },
    {
      '<leader><leader>k',
      function()
        require('smart-splits').swap_buf_up()
      end,
    },
    {
      '<leader><leader>l',
      function()
        require('smart-splits').swap_buf_right()
      end,
    },
  },
}
