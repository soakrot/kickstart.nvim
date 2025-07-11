return {
  'rose-pine/neovim',
  as = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      styles = {
        italic = false,
      },
    }
  end,
}
