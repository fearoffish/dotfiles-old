
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
    { 'rafi/awesome-vim-colorschemes' },
  }
end

return M
