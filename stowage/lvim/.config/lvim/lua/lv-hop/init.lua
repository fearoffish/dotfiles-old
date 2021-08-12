-- ~/.config/nvim/lua/lv-hop/init.lua

local M = {}

M.config = function()
	require("hop").setup()
	vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
	vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
	vim.api.nvim_set_keymap("n", "f", ":HopPattern<cr>", { silent = true })
end

return M

