local M = {}

--------------------------------------------------------------------------------

---@param str string
---@return string[]
function M.stringToTable(str)
  local t = {}
  for i = 1, #str do
    t[i] = str:sub(i, i)
  end
  return t
end

--------------------------------------------------------------------------------

return M
