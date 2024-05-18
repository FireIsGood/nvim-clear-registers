local M = {}

--------------------------------------------------------------------------------

---@class config
---@field registerFunction? boolean
---@field clearOnStartup? boolean

---@type config
local defaultConfig = {
  registerFunction = true,
  clearOnStartup = true,
}
M.config = defaultConfig

---optional setup function
---@param userConfig? config
function M.setup(userConfig)
  M.config = vim.tbl_deep_extend("force", M.config, userConfig or {})
  return M.config
end

--------------------------------------------------------------------------------

return M
