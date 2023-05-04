vim.cmd([[imap <silent><script><expr> <C-y> copilot#Accept("\<CR>")]])
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<M-n>', '<Plug>(copilot-next)', { silent = true })
vim.keymap.set('i', '<M-N>', '<Plug>(copilot-next)', { silent = true })

vim.cmd([[highlight CopilotSuggestion guifg=#7d97ab ctermfg=8]])


