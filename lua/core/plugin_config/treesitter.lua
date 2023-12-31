require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "rust", "python", "php", "markdown", "html", "json", "typescript", "vim", "javascript", "gitignore", "css", "bash", "go" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
