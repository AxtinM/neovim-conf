vim.opt.termguicolors = true

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    char = "▏",
    use_treesitter = true,
    show_first_indent_level = true,
    filetype_exclude = {
      'lspinfo',
      'packer',
      'checkhealth',
      'help',
      'man',
      'dashboard',
      'git',
      'markdown',
      'text',
      'terminal',
      'NvimTree',
    },
    buftype_exclude = {
     'terminal',
     'nofile',
     'quickfix',
     'prompt',
    },
}

