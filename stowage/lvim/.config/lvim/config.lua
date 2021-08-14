local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- general
lvim.format_on_save = false
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
  -- {'<Tab>', ':bnext<CR>'},
  -- {'<S-Tab>', ':bprevious<CR>'},
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
  {"lunarvim/colorschemes"},
  {"folke/tokyonight.nvim"},
  {
    "ray-x/lsp_signature.nvim",
    config = function() require"lsp_signature".on_attach() end,
    event = "InsertEnter"
  },
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
  {"LnL7/vim-nix"},
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


lvim.builtin.telescope.active = true
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }
local get_telescope_mappings = function()
	local actions = require("telescope.actions")
	return {
		i = {
			["<C-n>"] = actions.cycle_history_next,
			["<C-p>"] = actions.cycle_history_prev,
			["<C-c>"] = actions.close,
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
			["<CR>"] = actions.select_default + actions.center,
			["<c-x>"] = false,
		},
		n = {
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
		},
	}
end
lvim.builtin.telescope.defaults.mappings = get_telescope_mappings()

-- *
-- Dashboard
-- *
lvim.builtin.dashboard.active = true
lvim.builtin.dashboard.custom_section.a.command = "Telescope find_files find_command=rg,--ignore,--hidden,--files"

-- *
-- Terminal
-- *
lvim.builtin.terminal.active = true
lvim.builtin.terminal.shading_factor = 1

-- *
-- Nvimtree
-- *
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.hide_dotfiles = 0

-- *
-- Treesitter
-- *
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.matchup.enable = true
lvim.builtin.treesitter.context_commentstring.enable = true

-- *
-- Whichkey
-- *
lvim.builtin.which_key.active = true
lvim.builtin.which_key.mappings["w"] = { "<cmd>w<CR>", "Save" }
lvim.builtin.which_key.mappings["W"] = { "<cmd>w!<CR>", "Force Save" }
lvim.builtin.which_key.mappings["q"] = { "<cmd>q<CR>", "Quit" }
lvim.builtin.which_key.mappings["Q"] = { "<cmd>q!<CR>", "Force Quit" }
lvim.builtin.which_key.mappings["f"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" }
lvim.builtin.which_key.mappings["b"]["c"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search Current Buffer" }
lvim.builtin.which_key.mappings["s"]["f"] = {
	"<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>",
	"Find File",
}
lvim.builtin.which_key.mappings["s"]["m"] = { "<cmd>Telescope marks<cr>", "Search Marks" }
lvim.builtin.which_key.mappings["s"]["g"] = { "<cmd>Telescope git_files<cr>", "Search Git Files" }
lvim.builtin.which_key.mappings["t"] = {
	name = "Toggle",
	h = { "<cmd>set hlsearch!<CR>", "Toggle Highlight" },
	q = { "<cmd>call QuickFixToggle()<CR>", "Toggle Quick Fix List" },
	b = { "<cmd>GitBlameToggle<CR>", "Toggle Git Blame" },
	t = { "<cmd>Twilight<CR>", "Toggle Twilight" },
	i = { "<cmd>IndentBlanklineToggle<CR>", "Toggle Indent Line" },
	x = { "<cmd>TroubleToggle<CR>", "Toggle Trouble" },
}
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<CR>", "Zen Mode" }
lvim.builtin.which_key.mappings["x"] = {
	name = "Trouble",
	w = { "<cmd>Trouble lsp_workspace_diagnostics<CR>", "Trouble Workspaces" },
	d = { "<cmd>Trouble lsp_document_diagnostics<CR>", "Trouble Document" },
	l = { "<cmd>Trouble loclist<CR>", "Trouble Location List" },
	q = { "<cmd>Trouble quickfix<CR>", "Trouble Quickfix List" },
}
