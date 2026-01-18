return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  name = 'harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'
    local wk = require 'which-key'

    wk.add {
      {
        '<leader>a',
        function()
          harpoon:list():add()
        end,
        desc = 'Harpoon [a]ppend',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<leader>A',
        function()
          harpoon:list():prepend()
        end,
        desc = 'Harpoon prepend',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<leader>ph',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Toggle [h]arpoon menu',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<M-1>',
        function()
          harpoon:list():select(1)
        end,
        desc = 'Go to file [1]',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<M-2>',
        function()
          harpoon:list():select(2)
        end,
        desc = 'Go to file [2]',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<M-3>',
        function()
          harpoon:list():select(3)
        end,
        desc = 'Go to file [3]',
        icon = '󰛢',
        mode = 'n',
      },
      {
        '<M-4>',
        function()
          harpoon:list():select(4)
        end,
        desc = 'Go to file [4]',
        icon = '󰛢',
        mode = 'n',
      },
    }

    harpoon:setup()
  end,
}
