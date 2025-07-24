function ColorMyPencils(color)
  color = color or 'rose-pine'
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    'stevedylandev/darkmatter-nvim',
    name = 'darkmatter',
    lazy = false,
    priority = 1000,
    config = function()
      ColorMyPencils 'darkmatter'
    end,
  },
  {
    'webhooked/kanso.nvim',
    name = 'kanso',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanso').setup {
        bold = true,
        undercurl = true,
        terminalColors = true,
        theme = 'zen',
        background = {
          dark = 'zen',
        },
      }
      -- ColorMyPencils 'kanso'
    end,
  },
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    config = function() end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
        },
      }
    end,
  },
}
