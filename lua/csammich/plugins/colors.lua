function ColorMyPencils(color)
  color = color or 'rose-pine'
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    'rose-pine/neovim',
    as = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
        },
        ColorMyPencils(),
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ColorMyPencils()
    end,
  },
}
