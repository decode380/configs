local plugins = {
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("custom.configs.nvim-dap-ui")
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      --[[ require("core.utils").load_mappings("dap") ]]
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      require("custom.configs.nvim-dap-python")
    end,
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
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
      "debugpy",
      "lua-language-server",
      "angular-language-server",
      "clangd",
      "csharp-language-server",
      "css-lsp",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "emmet-ls",
      "html-lsp",
      "netcoredbg",
      "omnisharp",
      "pyright",
      "python-lsp-server",
      "typescript-language-server",
      },
    },
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
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
            {
                mode = { 'v', 'n' },
                '<Leader>n',
                '<cmd>MCstart<cr>',
                desc = 'Create a selection for selected text or word under the cursor',
            },
        },
  }
}
require("luasnip").filetype_extend("cs", {"csharp"})
return plugins
