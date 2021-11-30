local M = {}

M.config = function()
  -- CMP
  -- =========================================
  lvim.builtin.cmp.sources = {
    { name = "nvim_lsp", max_item_count = 4 },
    { name = "cmp_tabnine", max_item_count = 4 },
    { name = "buffer", max_item_count = 3 },
    { name = "path", max_item_count = 3 },
    { name = "luasnip", max_item_count = 3 },
    { name = "nvim_lua" },
    { name = "calc" },
    { name = "emoji" },
    { name = "treesitter" },
    { name = "crates" },
  }
  lvim.builtin.cmp.documentation.border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }

  -- Dashboard
  -- =========================================
  lvim.builtin.dashboard.active = true
  lvim.builtin.dashboard.custom_section["m"] = {
    description = { "  Marks              " },
    command = "Telescope marks",
  }

  -- NvimTree
  -- =========================================
  -- lvim.builtin.nvimtree.auto_open = 0
  -- lvim.builtin.nvimtree.hide_dotfiles = 0

  -- Treesitter
  -- =========================================
  lvim.builtin.treesitter.context_commentstring.enable = true
  lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "css",
    "rust",
    "java",
    "yaml",
    "ruby"
  }
  lvim.builtin.treesitter.ignore_install = { "haskell" }
  -- lvim.builtin.treesitter.incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = "<C-n>",
  --     node_incremental = "<C-n>",
  --     scope_incremental = "<C-s>",
  --     node_decremental = "<C-r>",
  --   },
  -- }
  -- lvim.builtin.treesitter.indent = { enable = true, disable = { "yaml", "python" } } -- treesitter is buggy :(
  lvim.builtin.treesitter.matchup.enable = true
  -- lvim.treesitter.textsubjects.enable = true
  -- lvim.treesitter.playground.enable = true
  -- lvim.builtin.treesitter.query_linter = {
  --   enable = true,
  --   use_virtual_text = true,
  --   lint_events = { "BufWrite", "CursorHold" },
  -- }
  -- lvim.builtin.treesitter.on_config_done = function()
  --   require("nvim-treesitter.parsers").get_parser_configs().solidity = {
  --     install_info = {
  --       url = "https://github.com/JoranHonig/tree-sitter-solidity",
  --       files = { "src/parser.c" },
  --       requires_generate_from_grammar = true,
  --     },
  --     filetype = "solidity",
  --   }
  -- end

  -- Telescope
  -- =========================================
  lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
  lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
  lvim.builtin.telescope.defaults.file_ignore_patterns = { "vendor/*" }

  -- Terminal
  -- =========================================
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.execs = {
    { "lazygit", "gg", "LazyGit" },
  }

  -- WhichKey
  -- =========================================

end

return M
