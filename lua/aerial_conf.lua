local map = require('maps')

require('aerial').setup({
    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    on_attach = map.mapAerialKey(bufnr)
})
