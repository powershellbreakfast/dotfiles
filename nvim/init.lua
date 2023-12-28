vim.wo.number = true
vim.wo.relativenumber = true


require("plugins")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "pylsp","clangd","powershell_es" },
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").pylsp.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").powershell_es.setup {}

