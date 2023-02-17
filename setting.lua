local M = {}

-- vgit reccomended setting
vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = 'yes'

vim.g.mapleader = ' '
vim.cmd('set autoindent')		-- automatically indent
vim.cmd('set expandtab')		-- use space to indent
vim.cmd('set tabstop=4')		-- insert 4 spaces for an indent
vim.cmd('set shiftwidth=4')	    -- spaces to move when using << or >> operator

-- list of lsp servers to install
M.servers = {
        "lua_ls",
        "clangd",
        "cmake",
        "fortls",
        "jsonls",
        "ltex",
        "marksman",
        "pyright",
        "bashls",
}

-- list of external packages to install with mason
M.packages = {
    "cpptools"
}

M.languages = {
        "bash",
        "c",
        "cpp",
        "cmake",
        "comment",
        "cuda",
        "latex",
        "make",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "regex",
        "vim",
        "help",
        "markdown",
}

return M
