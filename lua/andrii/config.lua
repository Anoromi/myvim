local Path = require("pathlib")

local dir = Path('.')
local neovimConfigPath = dir / "neovim-config.json"
if neovimConfigPath:exists() then
  local contents = neovimConfigPath:fs_read()
  return vim.json.decode(contents)
else
  return {}
end
