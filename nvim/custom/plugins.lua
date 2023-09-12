local plugins = {
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },{
    "mfussenegger/nvim-dap",
    config = function ()
      require("custom.configs.nvim-dap")
    end
  },{
    "rcarriga/nvim-dap-ui",
    config = function ()
      require("custom.configs.nvim-dap-ui")
    end,
    requires = {"mfussenegger/nvim-dap"}
  }
}
require("luasnip").filetype_extend("cs", {"csharp"})
return plugins
