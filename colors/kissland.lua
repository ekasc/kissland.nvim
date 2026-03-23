-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'kissland'

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
package.loaded['lush_theme.kissland'] = nil

-- include our theme file and pass it to lush to apply
local theme = require('lush_theme.kissland')
require('lush')(theme)

-- Set terminal colors
local colors = theme.lush_setup_data or theme
if colors then
    vim.g.terminal_color_0  = "#0a0f0e" -- black
    vim.g.terminal_color_1  = "#fa5252" -- red
    vim.g.terminal_color_2  = "#82c91e" -- limeGreen
    vim.g.terminal_color_3  = "#fab005" -- amber
    vim.g.terminal_color_4  = "#228be6" -- electricBlue
    vim.g.terminal_color_5  = "#1098ad" -- cerulean
    vim.g.terminal_color_6  = "#4dabf7" -- skyBlue
    vim.g.terminal_color_7  = "#c1c2c3" -- white
    vim.g.terminal_color_8  = "#495057" -- grey
    vim.g.terminal_color_9  = "#ff6b6b" -- bright red
    vim.g.terminal_color_10 = "#12b886" -- bright green
    vim.g.terminal_color_11 = "#ffd43b" -- bright amber
    vim.g.terminal_color_12 = "#74c0fc" -- bright electricBlue
    vim.g.terminal_color_13 = "#3bc9db" -- bright cerulean
    vim.g.terminal_color_14 = "#a5d8ff" -- bright skyBlue
    vim.g.terminal_color_15 = "#f8f9fa" -- bright white
end
