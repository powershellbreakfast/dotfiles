vim.wo.number = true
vim.wo.relativenumber = true
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

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
    ensure_installed = { "lua_ls", "pyright","clangd","powershell_es","biome" },
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup ({
	filetypes = {"python"}
})
require("lspconfig").clangd.setup {}
require("lspconfig").powershell_es.setup {}
require("lspconfig").biome.setup {}

