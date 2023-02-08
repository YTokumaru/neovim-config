setting = require('setting')

-- Install the servers
require("mason-lspconfig").setup {
    ensure_installed = setting.servers
}


