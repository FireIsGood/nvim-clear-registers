local M = {}
local cmd = vim.api.nvim_create_user_command

--------------------------------------------------------------------------------

---@param str string
---@return string[]
local function stringToTable(str)
  local t = {}
  for i = 1, #str do
    t[i] = str:sub(i, i)
  end
  return t
end

function M.setup()
  cmd("ClearRegisters", function()
    local registers = stringToTable("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-")
    for _, reg in pairs(registers) do
      vim.fn.setreg(reg, {})
    end
  end, {})
end

--------------------------------------------------------------------------------
return M
