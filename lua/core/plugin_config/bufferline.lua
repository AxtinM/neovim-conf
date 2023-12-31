local colors = {
    bg=     '#1d1f21',
    red=     '#fb3d66',
    green=     '#6d8c63',
    yellow=     '#e4cd7',
    orange=    '#bf946b',
    blue=     '#8b9eb2',
    violet=    '#cdafd9',
    magenta=     '#796e7f',
    darkblue=    '#55648',
    cyan=     '#7b8e93',
    bg_light= "#323b3e",
    bg_alt= "#202325",
    bg_red = '#182332',
    fg=    '#f7f8f8',
    clear= 'None',
}

-- colors for active , inactive uffer tabs
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        hover = {
            enabled = true,
            delay = 150,
            reveal = {'close'},
        },
        custom_areas = {
  right = function()
    local result = {}
    local seve = vim.diagnostic.severity
    local error = #vim.diagnostic.get(0, {severity = seve.ERROR})
    local warning = #vim.diagnostic.get(0, {severity = seve.WARN})
    local info = #vim.diagnostic.get(0, {severity = seve.INFO})
    local hint = #vim.diagnostic.get(0, {severity = seve.HINT})

    if error ~= 0 then
      table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
    end

    if warning ~= 0 then
      table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
    end

    if hint ~= 0 then
      table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
    end

    if info ~= 0 then
      table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
    end
    return result
  end,
}
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = colors.bg_alt
        },
        fill = {
            guifg = comment_fg,
            guibg = colors.bg
        },
        tab = {
                guifg = colors.bg,
                guibg = 'None'
            },
            tab_selected = {
                guifg = colors.bg,
                guibg = 'None'
            },

        buffer_selected = {
            guifg = normal_fg,
            guibg = colors.bg_light,
            gui = "bold"
        },
        buffer_visible = {
            guifg = colors.color6,
            guibg = colors.bg_alt
        },
        separator_visible = {
            guifg = colors.bg, 
            guibg = colors.bg_alt
        },
        separator_selected = {
            guifg = colors.bg, 
            guibg = colors.bg_light
        },
        separator = {
            guifg = colors.bg, 
            guibg = colors.bg
        },
        indicator_selected = {
            guifg = colors.bg, 
            guibg = colors.bg
        },
        modified_selected = {
            guifg = string_fg,
            guibg = colors.bg_light
        }
    }
}

local opt = {silent = true}

--command that adds new buffer and moves to it
--[[ vim.api.nvim_command "com -nargs=? -complete=file_in_path New badd <args> | blast" ]]
vim.api.nvim_set_keymap("n", "<S-b>", ":New ", opt)

--removing a buffer
vim.api.nvim_set_keymap("n", "<S-f>", [[<Cmd>bdelete<CR>]], opt)

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<S-j>", [[<Cmd>BufferLineCycleNext<CR>]], opt)

vim.api.nvim_set_keymap("n", "<S-k>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
