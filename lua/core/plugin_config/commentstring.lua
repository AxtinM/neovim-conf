require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
    config = {
      html = '// %s',
      css = '// %s',
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      },
      typescript = { __default = '// %s', __multiline = '/* %s */' }
    }
  }
}
