-- require lush
local lush = require "lush"
local hsl = lush.hsl
-- colors
local black = hsl "#000000"
local grey = black.lighten(50)
local red = hsl "#FF0000"
local electricBlue = hsl "#0066FF"
local cerulean = hsl "#007BA7"
local skyBlue = hsl "#87CEEB"
local limeGreen = hsl "#00FF00"
local mintGreen = hsl "#98FF98"
local tealGreen = hsl "#008080"
local white = hsl "#F8F8FF"
local amber = hsl "#FFBF00"
local darkBackground = electricBlue.darken(90)

local bg = darkBackground

-- terminal colors

-- directory and prompt

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {
		Normal { fg = white }, -- normal text
		Comment { fg = black.lighten(50), gui = "italic" }, -- any comment

		NormalFloat { fg = white },

		VertSplit { fg = Comment.fg.darken(25) },
		StatusLineNC { fg = Comment.fg.darken(25) },
		StatusLine { Comment, fg = Comment.fg.darken(25), gui = "underline" },
		LineNr { StatusLineNC, gui = "nocombine" },
		CursorLineNr { StatusLine, gui = "nocombine" },

		ColorColumn { bg = bg },
		CursorColumn {},
		CursorLine {},

		Folded { fg = white, gui = "bold" },
		FoldColumn { Normal, fg = Folded.fg },
		SignColumn { FoldColumn },

		Conceal { Normal },
		Directory { fg = cerulean.lighten(10) },

		DiffAdd { fg = black, bg = limeGreen },
		DiffChange { fg = black, bg = amber },
		DiffDelete { fg = black, bg = red },

		Pmenu { fg = white },
		PmenuSel { DiffAdd },
		PmenuSbar { bg = grey },
		PmenuThumb { bg = white },

		Title { fg = skyBlue },
		Visual { fg = black, bg = skyBlue },
		MatchParen { fg = red, gui = "underline" },

		MsgLine { gui = "italic" },
		MoreMsg { fg = skyBlue },
		Question { MoreMsg, gui = "nocombine" },
		ErrorMsg { fg = red, gui = "boldunderline" },
		WarningMsg { fg = amber },

		NonText { fg = mintGreen },
		EndOfBuffer { fg = bg.lighten(10) },
		Search { fg = black, bg = skyBlue.lighten(25), gui = "italicboldunderline" },
		SpecialKey { fg = cerulean },

		--

		Constant { fg = red },
		String { fg = white.darken(10) },
		Character { String },
		Number { fg = amber },
		Boolean { fg = red },
		Float { Number },

		Identifier { fg = mintGreen.darken(10) },
		Function { gui = "bold", fg = red.lighten(15) },
		Method { Function },

		Statement { fg = tealGreen.lighten(20), gui = "bold" },
		Label { Statement },
		Punctuation { Statement },
		Operator { Statement },
		Keyword { Statement },
		Conditional { fg = electricBlue, gui = "italic" },
		Repeat { Conditional },
		Exeception { Conditional },

		PreProc { fg = cerulean },
		Type { fg = red },
		Special { fg = cerulean.lighten(10), gui = "bold" },
		SpecialChar { fg = cerulean.lighten(50), gui = "bold" },
		Error { fg = white, bg = red, gui = "boldunderline" },
		Todo { fg = black, bg = limeGreen },

		-- LSP

		DiagnosticError { fg = red.saturate(20) },
		DiagnosticWarn { fg = amber.saturate(20) },
		DiagnosticHint { fg = skyBlue.saturate(50) },
		DiagnosticInfo { fg = white },

		DiagnosticSignError { DiagnosticError },
		DiagnosticSignWarn { DiagnosticWarn },
		DiagnosticSignHint { DiagnosticHint },
		DiagnosticSignInfo { DiagnosticInfo },
		DiagnosticVirtualTextError { fg = DiagnosticError.fg.lighten(25), gui = "bold" },
		DiagnosticVirtualTextWarn { fg = DiagnosticWarn.fg.lighten(25), gui = "bold" },
		DiagnosticVirtualTextHint { fg = DiagnosticHint.fg.lighten(25) },
		DiagnosticVirtualTextInfo { fg = DiagnosticInfo.fg.lighten(25) },

		DiagnosticUnderlineError { gui = "underline" },
		DiagnosticUnderlineWarn { gui = "underline" },
		DiagnosticUnderlineHint { gui = "underline" },
		DiagnosticUnderlineInfo { gui = "underline" },

		DiagnosticFloatError { DiagnosticVirtualTextError },
		DiagnosticFloatWarn { DiagnosticVirtualTextWarn },
		DiagnosticFloatHint { DiagnosticVirtualTextHint },
		DiagnosticFloatInfo { DiagnosticVirtualTextInfo },

		-- Treesitter
		-- TSKeyword { Conditional },
		-- TSKeywordFunction { PreProc },
		-- TSFuncBuiltin { PreProc },
		-- TSField {},

		-- Telescope highlighting (borders are ugly by default)
		TelescopeNormal { Normal },
		TelescopeMatching { Identifier, fg = cerulean.lighten(20), gui = "italic" },
		TelescopePromptBorder { NonText, gui = "nocombine" },
		TelescopeSelection {},
		-- TelescopeMultiSelection { Search },
		TelescopeSelectionCaret { TelescopePromptBorder },
		TelescopePromptPrefix {},
		TelescopeResultsBorder {},
		TelescopePreviewBorder {},
		TelescopePreviewLine { Search, gui = "inverse" },

		-- gitsigns
		GitSignsAdd { fg = DiffAdd.bg },
		GitSignsChange { fg = DiffChange.bg },
		GitSignsDelete { fg = DiffDelete.bg },

		-- headlines
		CodeBlock { bg = bg.lighten(5) },
		HeadLine { bg = bg.lighten(10) },

		-- Treesitter
		sym "@constructor" { Special },
		sym "@punctuation" { Punctuation },
		sym "@punctuation.bracket" { Punctuation },
		sym "@punctuation.delimiter" { Punctuation },
		sym "@punctuation.special" { Punctuation },
		sym "@symbol" { Constant },
		sym "@constant" { Constant },
		sym "@constant.builtin" { Keyword },
		sym "@string.escape" { Character },
		sym "@method" { Method },
		sym "@function" { Method },
		sym "@function.call" { Method },
		sym "@function.builtin" { Method },

		-- HTML
		sym "@tag.delimiter.html" { fg = skyBlue },
		sym "@tag.attribute.html" { Identifier },

		-- Svelte
		sym "@tag.delimiter.svelte" { fg = skyBlue },
		sym "@tag.attribute.svelte" { Identifier },

		-- Mason
		MasonNormal { NormalFloat },
	}
end)
return theme

-- vi:nowrap
