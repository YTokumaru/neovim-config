-- [[visual.lua]]
-- setting to do with the aesthetic of the editor done here
local V = {}        --table of functions to make available to other files
-- line numbers
vim.o.number = true                 -- display line number
--vim.o.relativenumber = true         -- display relative line number

local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

-- Diagonisic signs
sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

-- colourcheme
vim.cmd("colorscheme nordfox")

require("lualine").setup{
--    options = {
--        theme = 'everforest',
--    },
    sections = {
        lualine_c = { "hostname" }
    },

    inactive_sections = {
        lualine_c = { "hostname" }
    },
    winbar = {
        lualine_a = {'filename'},
        lualine_b = {
            "%{%v:lua.require'nvim-navic'.get_location()%}",
        }
    },
    inactive_winbar = {
        lualine_a = {'filename'}
    }
}

function V.cmpIcon()
    return {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = {
                copilot = '',
                nvim_lsp = '',
                luasnip = '',
                buffer = '',
                path = '',
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end,
    }
end


return V    -- make the functions available
