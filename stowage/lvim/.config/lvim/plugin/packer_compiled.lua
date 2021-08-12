-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/astronauta.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0¥\0\0\0π\0\0\0\0\0\0\2\17\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22\0\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\28@Ä\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\16\0\0\0\0\0\0\0core.bufferline\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\v\0\0\0\0\0\0\0bufferline\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\17\0\0\0µ\0\0\0µ\0\0\0µ\0\0\0µ\0\0\0µ\0\0\0∂\0\0\0∂\0\0\0∂\0\0\0∂\0\0\0∂\0\0\0∂\0\0\0∑\0\0\0∑\0\0\0∑\0\0\0∑\0\0\0∑\0\0\0π\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  colorschemes = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/colorschemes"
  },
  ["compe-tabnine"] = {
    after_files = { "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/compe-tabnine/after/plugin/compe_tabnine.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/compe-tabnine"
  },
  ["dashboard-nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0◊\0\0\0‹\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å@\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.dashboard\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\n\0\0\0\0\0\0\0dashboard\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\20\0\0\0ÿ\0\0\0ÿ\0\0\0ÿ\0\0\0ÿ\0\0\0ÿ\0\0\0Ÿ\0\0\0Ÿ\0\0\0Ÿ\0\0\0Ÿ\0\0\0Ÿ\0\0\0Ÿ\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0⁄\0\0\0‹\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["focus.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/focus.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0®\0\0\0≠\0\0\0\0\0\0\3\18\0\0\0\5\0\0\0A@\0\0\28@\0\1\5Ä\0\0\6¿@\0\6\0A\0\6@A\0\26\0\0\0\22¿\1Ä\5Ä\0\0\6¿@\0\6\0A\0\6@A\0E\0\0\0Å\0\1\0\\\0\0\1\28@\0\0\30\0Ä\0\6\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\16\0\0\0\0\0\0\0core.galaxyline\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\v\0\0\0\0\0\0\0galaxyline\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\18\0\0\0©\0\0\0©\0\0\0©\0\0\0™\0\0\0™\0\0\0™\0\0\0™\0\0\0™\0\0\0™\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0≠\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0n\0\0\0s\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å@\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\14\0\0\0\0\0\0\0core.gitsigns\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\t\0\0\0\0\0\0\0gitsigns\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\20\0\0\0o\0\0\0o\0\0\0o\0\0\0o\0\0\0o\0\0\0p\0\0\0p\0\0\0p\0\0\0p\0\0\0p\0\0\0p\0\0\0q\0\0\0q\0\0\0q\0\0\0q\0\0\0q\0\0\0q\0\0\0q\0\0\0q\0\0\0s\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0000\0\0\0\0\0\0\0@/Users/jamievandyke/.config/lvim/lv-config.lua\0M\0\0\0O\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\30\0Ä\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\a\0\0\0\0\0\0\0lv-hop\0\4\a\0\0\0\0\0\0\0config\0\0\0\0\0\6\0\0\0N\0\0\0N\0\0\0N\0\0\0N\0\0\0N\0\0\0O\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/hop.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0000\0\0\0\0\0\0\0@/Users/jamievandyke/.config/lvim/lv-config.lua\0C\0\0\0C\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\30\0Ä\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\14\0\0\0\0\0\0\0lsp_signature\0\4\n\0\0\0\0\0\0\0on_attach\0\0\0\0\0\6\0\0\0C\0\0\0C\0\0\0C\0\0\0C\0\0\0C\0\0\0C\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/neoformat"
  },
  neogit = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/neogit"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0H\0\0\0M\0\0\0\0\0\0\3\18\0\0\0\5\0\0\0A@\0\0\28@\0\1\5Ä\0\0\6¿@\0\6\0A\0\6@A\0\26\0\0\0\22¿\1Ä\5Ä\0\0\6¿@\0\6\0A\0\6@A\0E\0\0\0ÅÄ\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.autopairs\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\n\0\0\0\0\0\0\0autopairs\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\15\0\0\0\0\0\0\0nvim-autopairs\0\0\0\0\0\18\0\0\0I\0\0\0I\0\0\0I\0\0\0J\0\0\0J\0\0\0J\0\0\0J\0\0\0J\0\0\0J\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0M\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-comment"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0á\0\0\0í\0\0\0\0\0\0\5\30\0\0\0\5\0\0\0E@\0\0ÅÄ\0\0\28¿Ä\1\26@\0\0\22\0\2ÄÖ@\0\0¡¿\0\0úÄ\0\1À\0A\1‹Ä\0\1∆@¡\1\1Å\1\0‹@\0\1\30\0Ä\0Ü¿¡\0ú@Ä\0Ö\0\2\0Ü@B\1ÜÄB\1Ü¿B\1ö\0\0\0\22@\1ÄÖ\0\2\0Ü@B\1ÜÄB\1Ü¿B\1¿\0Ä\0ú@\0\1\30\0Ä\0\f\0\0\0\4\6\0\0\0\0\0\0\0pcall\0\4\b\0\0\0\0\0\0\0require\0\4\r\0\0\0\0\0\0\0nvim_comment\0\4\t\0\0\0\0\0\0\0core.log\0\4\f\0\0\0\0\0\0\0get_default\0\4\6\0\0\0\0\0\0\0error\0\4\28\0\0\0\0\0\0\0Failed to load nvim-comment\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\b\0\0\0\0\0\0\0comment\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\30\0\0\0à\0\0\0à\0\0\0à\0\0\0à\0\0\0â\0\0\0â\0\0\0ä\0\0\0ä\0\0\0ä\0\0\0ã\0\0\0ã\0\0\0ã\0\0\0ã\0\0\0ã\0\0\0å\0\0\0é\0\0\0é\0\0\0è\0\0\0è\0\0\0è\0\0\0è\0\0\0è\0\0\0è\0\0\0ê\0\0\0ê\0\0\0ê\0\0\0ê\0\0\0ê\0\0\0ê\0\0\0í\0\0\0\3\0\0\0\n\0\0\0\0\0\0\0status_ok\0\4\0\0\0\29\0\0\0\r\0\0\0\0\0\0\0nvim_comment\0\4\0\0\0\29\0\0\0\4\0\0\0\0\0\0\0Log\0\t\0\0\0\15\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0&\0\0\0+\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å@\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0core.compe\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\6\0\0\0\0\0\0\0compe\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\20\0\0\0'\0\0\0'\0\0\0'\0\0\0'\0\0\0'\0\0\0(\0\0\0(\0\0\0(\0\0\0(\0\0\0(\0\0\0(\0\0\0)\0\0\0)\0\0\0)\0\0\0)\0\0\0)\0\0\0)\0\0\0)\0\0\0)\0\0\0+\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0\n\0\0\0\16\0\0\0\0\0\0\3\18\0\0\0\5\0\0\0A@\0\0\28Ä\0\1FÄ@\0\\@Ä\0E¿\0\0F\0¡\0F@¿\0F@¡\0Z\0\0\0\22@\1ÄE¿\0\0F\0¡\0F@¿\0F@¡\0Ä\0\0\0\\@\0\1\30\0Ä\0\6\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0lspinstall\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\18\0\0\0\v\0\0\0\v\0\0\0\v\0\0\0\f\0\0\0\f\0\0\0\r\0\0\0\r\0\0\0\r\0\0\0\r\0\0\0\r\0\0\0\r\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\16\0\0\0\1\0\0\0\v\0\0\0\0\0\0\0lspinstall\0\3\0\0\0\17\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0000\0\0\0\0\0\0\0@/Users/jamievandyke/.config/lvim/lv-config.lua\0^\0\0\0`\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\30\0Ä\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\b\0\0\0\0\0\0\0spectre\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0_\0\0\0_\0\0\0_\0\0\0_\0\0\0_\0\0\0`\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0‰\0\0\0È\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\14\0\0\0\0\0\0\0core.terminal\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\t\0\0\0\0\0\0\0terminal\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\v\0\0\0\0\0\0\0toggleterm\0\0\0\0\0\20\0\0\0Â\0\0\0Â\0\0\0Â\0\0\0Â\0\0\0Â\0\0\0Ê\0\0\0Ê\0\0\0Ê\0\0\0Ê\0\0\0Ê\0\0\0Ê\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0Á\0\0\0È\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0c\0\0\0h\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\14\0\0\0\0\0\0\0core.nvimtree\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\t\0\0\0\0\0\0\0nvimtree\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\17\0\0\0\0\0\0\0nvim-tree.config\0\0\0\0\0\20\0\0\0d\0\0\0d\0\0\0d\0\0\0d\0\0\0d\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0h\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0U\0\0\0Z\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\16\0\0\0\0\0\0\0core.treesitter\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\v\0\0\0\0\0\0\0treesitter\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\24\0\0\0\0\0\0\0nvim-treesitter.configs\0\0\0\0\0\20\0\0\0V\0\0\0V\0\0\0V\0\0\0V\0\0\0V\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0\26\0\0\0\31\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å@\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.telescope\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\n\0\0\0\0\0\0\0telescope\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\20\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\31\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim"
  },
  vim = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-fish"
  },
  ["vim-nix"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-nix"
  },
  ["vim-rooter"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0ô\0\0\0û\0\0\0\0\0\0\2\17\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22\0\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\28@Ä\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\f\0\0\0\0\0\0\0core.rooter\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\a\0\0\0\0\0\0\0rooter\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\17\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0û\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/start/vim-terraform"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0z\0\0\0\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.which-key\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\n\0\0\0\0\0\0\0which_key\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\n\0\0\0\0\0\0\0which-key\0\0\0\0\0\20\0\0\0{\0\0\0{\0\0\0{\0\0\0{\0\0\0{\0\0\0|\0\0\0|\0\0\0|\0\0\0|\0\0\0|\0\0\0|\0\0\0}\0\0\0}\0\0\0}\0\0\0}\0\0\0}\0\0\0}\0\0\0}\0\0\0}\0\0\0\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jamievandyke/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0c\0\0\0h\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\14\0\0\0\0\0\0\0core.nvimtree\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\t\0\0\0\0\0\0\0nvimtree\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\17\0\0\0\0\0\0\0nvim-tree.config\0\0\0\0\0\20\0\0\0d\0\0\0d\0\0\0d\0\0\0d\0\0\0d\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0e\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0f\0\0\0h\0\0\0\0\0\0\0\0\0\0\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-rooter
time([[Config for vim-rooter]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0ô\0\0\0û\0\0\0\0\0\0\2\17\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22\0\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\28@Ä\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\f\0\0\0\0\0\0\0core.rooter\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\a\0\0\0\0\0\0\0rooter\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\17\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0ö\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0õ\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0ú\0\0\0û\0\0\0\0\0\0\0\0\0\0\0", "config", "vim-rooter")
time([[Config for vim-rooter]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0U\0\0\0Z\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å¿\1\0\\\0\0\1\28@\0\0\30\0Ä\0\b\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\16\0\0\0\0\0\0\0core.treesitter\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\v\0\0\0\0\0\0\0treesitter\0\4\15\0\0\0\0\0\0\0on_config_done\0\4\24\0\0\0\0\0\0\0nvim-treesitter.configs\0\0\0\0\0\20\0\0\0V\0\0\0V\0\0\0V\0\0\0V\0\0\0V\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0W\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0X\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0@\0\0\0\0\0\0\0@/Users/jamievandyke/.local/share/lunarvim/lvim/lua/plugins.lua\0\26\0\0\0\31\0\0\0\0\0\0\3\20\0\0\0\5\0\0\0A@\0\0\28Ä\0\1\6Ä@\0\28@Ä\0\5¿\0\0\6\0A\0\6@A\0\6ÄA\0\26\0\0\0\22¿\1Ä\5¿\0\0\6\0A\0\6@A\0\6ÄA\0E\0\0\0Å@\1\0\\\0\0\1\28@\0\0\30\0Ä\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.telescope\0\4\6\0\0\0\0\0\0\0setup\0\4\5\0\0\0\0\0\0\0lvim\0\4\b\0\0\0\0\0\0\0builtin\0\4\n\0\0\0\0\0\0\0telescope\0\4\15\0\0\0\0\0\0\0on_config_done\0\0\0\0\0\20\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\27\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\28\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\31\0\0\0\0\0\0\0\0\0\0\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'hop.nvim', 'nvim-comment', 'gitsigns.nvim', 'nvim-spectre'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'compe-tabnine', 'nvim-compe', 'lsp_signature.nvim', 'nvim-ts-autotag', 'vim-vsnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'barbar.nvim', 'nvim-toggleterm.lua', 'dashboard-nvim', 'galaxyline.nvim', 'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
