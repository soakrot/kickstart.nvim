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
        '<C-h>',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Toggle [h]arpoon menu',
        icon = '󰛢',
        mode = 'n',
      },
    }

    harpoon:setup()
  end,
}
