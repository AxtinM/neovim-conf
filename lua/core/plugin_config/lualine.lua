require('lualine').setup {
  options = {
    icons_enable = true,
    theme = 'gruvbox',
  },
  section = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
