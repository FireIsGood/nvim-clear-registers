local M = {}
local augroup = vim.api.nvim_create_augroup("ClearRegisters", { clear = true })
local cmd = vim.api.nvim_create_user_command
local util = require("clear-registers.util")

--------------------------------------------------------------------------------

function M.clearRegisters()
  local registers = util.stringToTable("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-")
  for _, reg in pairs(registers) do
    vim.fn.setreg(reg, {})
  end
end

local function registerUserFunction()
  cmd("ClearRegisters", M.clearRegisters, {})
end

--- Optional setup function
---@param userConfig? config
function M.setup(userConfig)
  local config = require("clear-registers.config").setup(userConfig)

  if config.registerFunction then
    registerUserFunction()
  end

  if config.clearOnStartup then
    vim.api.nvim_create_autocmd(
      "VimEnter",
      { group = augroup, desc = "Clear registers on load", once = true, callback = M.clearRegisters }
    )
  end
end

--------------------------------------------------------------------------------
return M
