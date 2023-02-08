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
        { name = 'nvim_lsp', keyword_length = 3 },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'path'},
        { name =  'buffer', keyword_length = 3 }
    },

    window = {
        documentation = cmp.config.window.bordered()
    },

    formatting = require("visual").cmpIcon(),
}
