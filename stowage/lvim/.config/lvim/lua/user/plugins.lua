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
    --   "simrat39/symbols-outline.nvim",
    --   cmd = "SymbolsOutline",
    -- },
    -- {
    --   "lukas-reineke/indent-blankline.nvim",
    --   setup = function()
    --     require("user.indent_blankline").setup()
    --   end,
    --   event = "BufRead",
    -- },
    -- {
    --   "tzachar/cmp-tabnine",
    --   run = "./install.sh",
    --   requires = "hrsh7th/nvim-cmp",
    --   config = function()
    --     local tabnine = require "cmp_tabnine.config"
    --     tabnine:setup {
    --       max_lines = 1000,
    --       max_num_results = 10,
    --       sort = true,
    --     }
    --   end,
    --   disable = not lvim.builtin.tabnine.active,
    -- },
    -- {
    --   "andymass/vim-matchup",
    --   event = "CursorMoved",
    --   config = function()
    --     vim.g.matchup_matchparen_offscreen = { method = "popup" }
    --   end,
    -- },
    -- {
    --   "iamcco/markdown-preview.nvim",
    --   run = "cd app && npm install",
    --   ft = "markdown",
    -- },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function()
        require("user.spectre").config()
      end,
    },
    -- {
    --   "andweeb/presence.nvim",
    --   config = function()
    --     require("user.presence").config()
    --   end,
    --   disable = not lvim.builtin.presence.active,
    -- },
    -- {
    --   "danymat/neogen",
    --   config = function()
    --     require("neogen").setup {
    --       enabled = true,
    --     }
    --   end,
    --   event = "BufRead",
    --   requires = "nvim-treesitter/nvim-treesitter",
    -- },
    -- {
    --   "jose-elias-alvarez/nvim-lsp-ts-utils",
    --   config = function()
    --     require("user.ts_utils").config()
    --   end,
    --   ft = {
    --     "javascript",
    --     "javascriptreact",
    --     "javascript.jsx",
    --     "typescript",
    --     "typescriptreact",
    --     "typescript.tsx",
    --   },
    -- },
    -- {
    --   "akinsho/bufferline.nvim",
    --   config = function()
    --     require("user.bufferline").config()
    --   end,
    --   requires = "nvim-web-devicons",
    --   disable = not lvim.builtin.fancy_bufferline.active,
    -- },
    -- {"hashivim/vim-terraform"},
    {"dracula/vim"},
    {"p00f/nvim-ts-rainbow"},
    -- {
    --   "karb94/neoscroll.nvim",
    --   event = "WinScrolled",
    --   config = function()
    --     require('neoscroll').setup({
    --       -- All these keys will be mapped to their corresponding default scrolling animation
    --       mappings = {'<c-u>', '<c-d>', '<c-b>', '<c-f>', '<c-y>', '<c-e>', 'zt', 'zz', 'zb'},
    --       hide_cursor = true,          -- hide cursor while scrolling
    --       stop_eof = true,             -- stop at <eof> when scrolling downwards
    --       use_local_scrolloff = false, -- use the local scope of scrolloff instead of the global scope
    --       respect_scrolloff = false,   -- stop scrolling when the cursor reaches the scrolloff margin of the file
    --       cursor_scrolls_alone = true, -- the cursor will keep on scrolling even if the window cannot scroll further
    --       easing_function = nil,        -- default easing function
    --       pre_hook = nil,              -- function to run before the scrolling animation starts
    --       post_hook = nil,              -- function to run after the scrolling animation ends
    --     })
    --   end
    -- },
    -- {
    --   "tpope/vim-surround",
    --   keys = {"c", "d", "y"}
    -- },
    -- {
    -- "tpope/vim-rails",
    --   cmd = {
    --     "Eview",
    --     "Econtroller",
    --     "Emodel",
    --     "Smodel",
    --     "Sview",
    --     "Scontroller",
    --     "Vmodel",
    --     "Vview",
    --     "Vcontroller",
    --     "Tmodel",
    --     "Tview",
    --     "Tcontroller",
    --     "Rails",
    --     "Generate",
    --     "Runner",
    --     "Extract"
    --   }
    -- },
    -- { 'mg979/vim-visual-multi' },
    -- {
    --   'junegunn/vim-easy-align',
    --   config = function ()
    --     vim.cmd 'xmap ga <Plug>(EasyAlign)'
    --     vim.cmd 'nmap ga <Plug>(EasyAlign)'
    --   end
    -- },
    -- { 'rafi/awesome-vim-colorschemes' },
  }
end

return M
