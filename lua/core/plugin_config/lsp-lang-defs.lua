local lspconfig = require'lspconfig'

local servers = {
    "clangd",
    "gopls",
}

for _, server in ipairs(servers) do
    lspconfig[server].setup{}
end
