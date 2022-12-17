local colorscheme = "tokyonight"
local config_status_ok, nvim_tree_config = pcall(require, "tokyonight")

nvim_tree_config.setup({
  style = "night",
  transparent = false
})

local status_ok_for_colorscheme, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok_for_colorscheme or config_status_ok then
  return
end
