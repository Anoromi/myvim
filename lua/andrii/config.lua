local Path = require("pathlib")
local lunajson = require('lunajson')

local dir = Path('.')
local neovimConfigPath = dir / "neovim-config.json"
if neovimConfigPath:exists() then
  local contents = neovimConfigPath:fs_read()
  return lunajson.decode(contents)
else
  return {}
end
