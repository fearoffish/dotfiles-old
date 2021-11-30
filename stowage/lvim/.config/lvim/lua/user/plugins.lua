
local M = {}

M.config = function()
  lvim.plugins = {
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user.lsp_signature").config()
      end,
      event = "InsertEnter",
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    -- {
    --   "windwp/nvim-spectre",
    --   event = "BufRead",
    --   config = function()
    --     require("user.spectre").config()
    --   end,
    -- },
    {"hashivim/vim-terraform"},
    {"dracula/vim"},
    {"p00f/nvim-ts-rainbow"},
    {
      "nvim-telescope/telescope-project.nvim",
      event = "BufWinEnter",
      setup = function()
        vim.cmd [[packadd telescope.nvim]]
      end,
    },
    { 'rafi/awesome-vim-colorschemes' },
    {
      "tzachar/cmp-tabnine",
      run = "./install.sh",
      requires = "hrsh7th/nvim-cmp",
      event = "InsertEnter",
    },
    {
      "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
        module = "persistence",
        config = function()
          require("persistence").setup {
            dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
            options = { "buffers", "curdir", "tabpages", "winsize" },
          }
      end,
    },
    {
      "tpope/vim-surround",
      keys = {"c", "d", "y"}
    },
    {
      "github/copilot.vim",
      requires = "hrsh7th/nvim-cmp",
    }
  }
end

return M
