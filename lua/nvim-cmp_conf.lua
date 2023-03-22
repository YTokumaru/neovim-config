-- nvim-cmp setupvalue
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
local luasnip = require("luasnip")
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
        luasnip.lsp_expand(args.body)
        end,
    },
    mapping = require('maps').mapCmpKey(),
    sources = {
        { name =  'copilot', group_index = 2, keyword_length = 0 },
        { name = 'nvim_lsp', group_index = 2 },
        { name = 'luasnip', group_index = 2 },
        { name = 'path', group_index = 2},
        { name =  'buffer', group_index = 2}
    },

    window = {
        documentation = cmp.config.window.bordered()
    },

    formatting = require("visual").cmpIcon(),
}
