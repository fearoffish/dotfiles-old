-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "dracula"
vim.opt.relativenumber = true
lvim.lsp.diagnostics.virtual_text = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- set up ripgrep
vim.cmd([[
if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
  set grepformat=%f:%l:%c:%m
endif
]])

require("user.builtin").config()

-- Language Specific
-- =========================================
-- require("user.json_schemas").setup()
-- require("user.yaml_schemas").setup()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Additional keybindings
-- =========================================
-- require("user.keybindings").config()

