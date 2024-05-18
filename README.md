# nvim-clear-registers

Adds the command `:ClearRegisters` to clear your registers. That's literally it.

## Installation

```lua
-- lazy.nvim
{
  "FireIsGood/nvim-clear-registers",
  lazy = false,
  config = true,
},

-- packer
use "FireIsGood/nvim-clear-registers"
```

## Usage

Use the command to clear your registers.

```
:ClearRegisters
```

## Configuration

### Defaults

The `.setup()` call is optional if you are fine with the defaults below.

```lua
-- default config
require("clear-registers").setup({
  registerFunction = true, -- Registers :ClearRegisters
  clearOnStartup = true,   -- Clears all registers on startup
})
```

## Contributing

This project is feature complete. Feel free to add issues if it breaks.
