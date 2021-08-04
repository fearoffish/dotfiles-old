local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "dracula"
lvim.auto_close_tree = 0
lvim.wrap_lines = false
lvim.timeoutlen = 100
lvim.document_highlight = true
lvim.ignore_case = true
lvim.smart_case = true
cmd("set relativenumber")
cmd("set inccommand=nosplit")

-- keymappings
lvim.leader = "space"
-- overwrite the key-mappings provided by LunarVim for any mode, or leave it empty to keep them
lvim.keys.normal_mode = {
--   Page down/up
--   {'[d', '<PageUp>'},
--   {']d', '<PageDown>'},
--
--   Navigate buffers
  {'<Tab>', ':bnext<CR>'},
  {'<S-Tab>', ':bprevious<CR>'},
-- }
-- if you just want to augment the existing ones then use the utility function
-- require("utils").add_keymap_insert_mode({ silent = true }, {
-- { "<C-s>", ":w<cr>" },
-- { "<C-c>", "<ESC>" },
}
-- you can also use the native vim way directly
-- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })
cmd(':tnoremap <Esc> <C-\\><C-n>')

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- Additional Plugins
lvim.plugins = {
  {"sbdchd/neoformat"},
  {"vim-airline/vim-airline"},
  {"vim-airline/vim-airline-themes"},
  {"dracula/vim"},
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("lv-hop").config()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",

  },
  {"p00f/nvim-ts-rainbow"},
  {"beauwilliams/focus.nvim"},
  {"dag/vim-fish"},
  {"nvim-telescope/telescope-frecency.nvim"},
  {"TimUntersberger/neogit"},
  {"hashivim/vim-terraform"},
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
      end,
  },
  {
    "tzachar/compe-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-compe",
    event = "InsertEnter",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },

}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

vim.cmd [[
nnoremap Y y$

" paste on cursor
"nnoremap gP i<CR><Esc>PkJxJx
"nnoremap gp a<CR><Esc>PkJxJx

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register without yanking it
vnoremap p "_dP
]]

-- Additional Leader bindings for WhichKey
lvim.builtin.which_key.on_config_done = function()
  local keys = lvim.builtin.which_key.mappings

  keys.t = {
    name = "Terminal",
    h = { "<cmd>split term://fish | resize 28 <cr>", "Horizontal" },
    v = { "<cmd>vsplit term://fish <cr>", "Vertical" },
  }
  keys.r = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  }
  keys["F"] = { "<cmd>lua require('telescope').find_files({hidden=true})<cr>", "Find File (hidden)"}
end

-- Autopairs
lvim.builtin.autopairs.on_config_done = function()
  local autopairs = require('nvim-autopairs')
  local endwise = require('nvim-autopairs.ts-rule').endwise
  autopairs.add_rules(
    {
    endwise('def', 'end',nil, nil)
    })
end
