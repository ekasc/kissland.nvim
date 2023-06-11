Kissland.nvim
=

A kissland inspired theme made with Lush!

# Installation
packer
```lua
use "ekasc/kissland.nvim"
```

# Usage
Its ready to go out of the box but I made it with translucent and dimmed backgrounds in mind.

```lua
function KisslandTheme(color)
	color = color or "kissland"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

KisslandTheme()
```

See: http://git.io/lush.nvim for more information on Lush and a helper script
to setup your repo clone.
