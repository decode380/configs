local plugins = {
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require("custom.configs.nvim-dap")
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function ()
      require("custom.configs.nvim-dap-ui")
    end,
    requires = {"mfussenegger/nvim-dap"}
  },
  {
    "windwp/nvim-ts-autotag",
    config = function ()
      require("custom.configs.nvim-ts-autotag")
    end,
    lazy = false
  },
  {
    "kylechui/nvim-surround",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end,
    lazy = false
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function ()
      require("ts_context_commentstring").setup({})
    end,
    lazy = false
  },
  {
    "numToStr/Comment.nvim",
    opts = require "custom.configs.comment-nvim"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    },
  },
}
require("luasnip").filetype_extend("cs", {"csharp"})
return plugins
