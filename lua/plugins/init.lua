return { -- confrom.nvim
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>fr",
        function()
          require("conform").format {
            async = true,
          }
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = require "configs.conform",
  }, -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  }, -- lazygit
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim" },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = { {
      "<leader>lg",
      "<cmd>LazyGit<cr>",
      desc = "LazyGit",
    } },
  }, -- lazydocker.nvim
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("lazydocker").setup {}
    end,
    event = "BufRead",
    keys = {
      {
        "<leader>ld",
        function()
          require("lazydocker").open()
        end,
        desc = "Open Lazydocker floating window",
      },
    },
  }, -- undotree
  {
    "mbbill/undotree",
    lazy = false,
    keys = { { "<leader>u", "<cmd>UndotreeToggle<cr>" } },
  }, -- codeium.vim
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  }, -- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "go",
        "css",
      },
    },
  },
}
