local lspconfig = require'lspconfig'

local servers = {
    "clangd",
    "gopls",
    "sourcekit",
    "pyright",
}

for _, server in ipairs(servers) do
    lspconfig[server].setup{}
end
