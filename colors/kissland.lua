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
    vim.g.terminal_color_1  = "#c25d5d" -- red
    vim.g.terminal_color_2  = "#98c379" -- limeGreen
    vim.g.terminal_color_3  = "#c0ca8e" -- distinct Cold Citron
    vim.g.terminal_color_4  = "#7da2e0" -- readable electricBlue
    vim.g.terminal_color_5  = "#66c2cd" -- readable cerulean
    vim.g.terminal_color_6  = "#82c0f0" -- readable skyBlue
    vim.g.terminal_color_7  = "#dcdfe1" -- crisp white
    vim.g.terminal_color_8  = "#7c828c" -- readable grey
    vim.g.terminal_color_9  = "#e06c75" -- bright red
    vim.g.terminal_color_10 = "#98c379" -- bright green
    vim.g.terminal_color_11 = "#d7e0a8" -- bright Cold Citron
    vim.g.terminal_color_12 = "#61afef" -- bright electricBlue
    vim.g.terminal_color_13 = "#56b6c2" -- bright cerulean
    vim.g.terminal_color_14 = "#abb2bf" -- bright skyBlue
    vim.g.terminal_color_15 = "#f8f9fa" -- bright white
end
