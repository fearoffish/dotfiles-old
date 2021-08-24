-- local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- general
lvim.format_on_save     = false
lvim.lint_on_save       = true
lvim.colorscheme        = "dracula"
lvim.auto_close_tree    = 0
lvim.wrap_lines         = false
lvim.timeoutlen         = 100
lvim.document_highlight = true
lvim.ignore_case        = true
lvim.smart_case         = true
cmd("set relativenumber")
cmd("set inccommand=nosplit")

-- keymappings
lvim.leader = "space"

lvim.keys.normal_mode["<F2>"]  = "<cmd>lua require'core.nvimtree'.toggle_tree()<cr>"
lvim.keys.normal_mode["<F3>"]  = "<cmd>SymbolsOutline<cr>"
lvim.keys.normal_mode["<F5>"]  = "<cmd>FzfLua files<cr>"
lvim.keys.normal_mode["<F6>"]  = "<cmd>FzfLua grep<cr>"
lvim.keys.normal_mode["<F7>"]  = "<cmd>FzfLua grep_cword<cr>"
lvim.keys.normal_mode["<F9>"]  = "<cmd>ZenMode<cr>"
lvim.keys.normal_mode["<A-l>"] = ":bnext<cr>"
lvim.keys.normal_mode["<A-h>"] = ":bprevious<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- you can also use the native vim way directly
-- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })
cmd(':tnoremap <Esc> <C-\\><C-n>')

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active        = true
lvim.builtin.terminal.active         = true
lvim.builtin.nvimtree.side           = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed  = "all"
lvim.builtin.treesitter.ignore_install    = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- compe settings
lvim.builtin.compe.allow_prefix_unmatch = false
lvim.builtin.compe.autocomplete         = true

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
  { "nvim-treesitter/nvim-treesitter-textobjects"},
  {"p00f/nvim-ts-rainbow"},
  -- {"beauwilliams/focus.nvim"},
  {"dag/vim-fish"},
  {"nvim-telescope/telescope-frecency.nvim"},
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
  {
  "folke/todo-comments.nvim",
    event = "BufRead",
  },
  {
  "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
    require("numb").setup {
      show_numbers = true, -- Enable 'number' for the window while peeking
      show_cursorline = true, -- Enable 'cursorline' for the window while peeking
    }
    end,
  },
  {
  "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
  },
  {
  "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  {
  "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<c-u>', '<c-d>', '<c-b>', '<c-f>', '<c-y>', '<c-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- hide cursor while scrolling
        stop_eof = true,             -- stop at <eof> when scrolling downwards
        use_local_scrolloff = false, -- use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- the cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- default easing function
        pre_hook = nil,              -- function to run before the scrolling animation starts
        post_hook = nil,              -- function to run after the scrolling animation ends
      })
    end
  },
  {
  "folke/persistence.nvim",
    event  = "VimEnter",
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir     = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {
  "tpope/vim-surround",
    keys = {"c", "d", "y"}
  },
  {
  "tpope/vim-rails",
    cmd = {
      "Eview",
      "Econtroller",
      "Emodel",
      "Smodel",
      "Sview",
      "Scontroller",
      "Vmodel",
      "Vview",
      "Vcontroller",
      "Tmodel",
      "Tview",
      "Tcontroller",
      "Rails",
      "Generate",
      "Runner",
      "Extract"
    }
  },
  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require('neoclip').setup()
    end,
 },
 {
  "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  { 'mg979/vim-visual-multi' },
  {
    'junegunn/vim-easy-align',
    config = function ()
      vim.cmd 'xmap ga <Plug>(EasyAlign)'
      vim.cmd 'nmap ga <Plug>(EasyAlign)'
    end
  },
  {
  "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
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
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git/", "node_modules" }
lvim.builtin.telescope.defaults.find_command = { 'rg', '--hidden', '--ignore', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case' }
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
-- lvim.builtin.dashboard.custom_section.a.command = "Telescope find_files find_command=rg,--ignore,--hidden,--files"

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
lvim.builtin.which_key.mappings["p"] = { "<cmd>lua require'telescope'.extensions.project.project{ display_type = 'full' }<cr>", "Projects" }
lvim.builtin.which_key.mappings["b"]["F"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search Current Buffer" }
lvim.builtin.which_key.mappings["s"]["f"] = {	"<cmd>Telescope find_files hidden=true<CR>", "Find File" }
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
lvim.builtin.which_key.mappings["T"] = {
  h = { "<cmd>split term://zsh | resize 28 <cr>", "Horizontal" },
  v = { "<cmd>vsplit term://zsh <cr>", "Vertical" },
}
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<CR>", "Zen Mode" }
lvim.builtin.which_key.mappings["x"] = {
	name = "Trouble",
	w = { "<cmd>Trouble lsp_workspace_diagnostics<CR>", "Trouble Workspaces" },
	d = { "<cmd>Trouble lsp_document_diagnostics<CR>", "Trouble Document" },
	l = { "<cmd>Trouble loclist<CR>", "Trouble Location List" },
	q = { "<cmd>Trouble quickfix<CR>", "Trouble Quickfix List" },
}
