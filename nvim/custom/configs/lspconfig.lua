local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { 
  "html", "cssls", "clangd", "tsserver", "angularls", 
  "docker_compose_language_service", "dockerls", "csharp_ls", 
  "pylsp", "emmet_ls", "pyright"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
