-- require lush
local lush = require('lush')
local hsl = lush.hsl

-- colors
local black = hsl('#000000')
local electricRed = hsl('#FF0000')
local electricBlue = hsl('#0066FF')
local cerulean = hsl('#007BA7')
local skyBlue = hsl('#87CEEB')
local limeGreen = hsl('#00FF00')
local electricGreen = hsl('#00FF33')
local mintGreen = hsl('#98FF98')
local tealGreen = hsl('#008080')
local ghostWhite = hsl('#F8F8FF')
local amber = hsl('#FFBF00')
local darkBackground = electricBlue.darken(90)

local bg = darkBackground

-- terminal colors

-- directory and prompt


local theme = lush(function()
	return {
		Normal { bg = bg, fg = ghostWhite },          -- normal text
		Comment { fg = black.lighten(50), gui = 'italic' }, -- any comment

		VertSplit { fg = Comment.fg.darken(25) },
		StatusLineNC { Comment, fg = Comment.fg.darken(25), gui = 'underline' },
		StatusLine { Comment, fg = Comment.fg.darken(25), gui = 'underline' },
		LineNr { StatusLineNC, gui = 'nocombine' },
		CursorLineNr { StatusLine, gui = 'nocombine' },

		ColorColumn { bg = bg },
		CursorColumn {},
		CursorLine {},

		Folded { fg = ghostWhite, gui = 'bold' },
		FoldColumn { Normal, fg = Folded.fg },
		SignColumn { FoldColumn },

		Pmenu { fg = ghostWhite, bg = bg.darken(50) },
		PmenuSel { fg = Pmenu.bg, bg = Pmenu.fg },

		Conceal { Normal },
		Directory { fg = cerulean },

		DiffAdd { fg = black, bg = limeGreen },
		DiffChange { fg = black, bg = amber },
		DiffDelete { fg = black, bg = electricRed },

		Title { fg = skyBlue },
		Visual { fg = mintGreen, bg = black.lighten(20) },
		MatchParen { fg = electricRed, bg = black, gui = 'underline' },

		MsgLine { gui = 'italic' },
		MoreMsg { fg = skyBlue },
		Question { MoreMsg, gui = 'nocombine' },
		ErrorMsg { fg = electricRed, gui = 'boldunderline' },
		WarningMsg { fg = amber },

		NonText { fg = Visual.fg },
		EndOfBuffer { fg = bg.lighten(10) },
		Search { fg = black, bg = skyBlue.lighten(25), gui = 'italicboldunderline' },
		SpecialKey { fg = cerulean },

		--

		Constant { fg = electricRed },
		String { fg = ghostWhite.darken(10) },
		Character { String },
		Number { fg = amber },
		Boolean { Number },
		Float { Number },

		Identifier { fg = mintGreen.darken(10) },
		Function { gui = 'bold', fg = electricRed.lighten(15) },

		Statement { fg = tealGreen.lighten(20), gui = 'bold' },
		Conditional { fg = electricBlue, gui = 'italic' },
		Repeat { Conditional },
		Label { Statement },
		Operator { Statement },
		Keyword { Statement },
		Exeception { Statement },

		PreProc { fg = cerulean },
		Type { PreProc },
		Special { fg = cerulean.lighten(10), gui = 'bold' },
		Error { fg = ghostWhite, bg = electricRed, gui = 'boldunderline' },
		Todo { fg = black, bg = electricGreen },

		-- LSP

		DiagnosticError { fg = electricRed.saturate(20) },
		DiagnosticWarn { fg = amber.saturate(20) },
		DiagnosticHint { fg = skyBlue.saturate(50) },
		DiagnosticInfo { fg = ghostWhite },

		DiagnosticSignError { DiagnosticError },
		DiagnosticSignWarn { DiagnosticWarn },
		DiagnosticSignHint { DiagnosticHint },
		DiagnosticSignInfo { DiagnosticInfo },
		DiagnosticVirtualTextError { fg = DiagnosticError.fg.lighten(25), gui = 'bold' },
		DiagnosticVirtualTextWarn { fg = DiagnosticWarn.fg.lighten(25), gui = 'bold' },
		DiagnosticVirtualTextHint { fg = DiagnosticHint.fg.lighten(25) },
		DiagnosticVirtualTextInfo { fg = DiagnosticInfo.fg.lighten(25) },

		DiagnosticUnderlineError { gui = 'underline' },
		DiagnosticUnderlineWarn { gui = 'underline' },
		DiagnosticUnderlineHint { gui = 'underline' },
		DiagnosticUnderlineInfo { gui = 'underline' },

		DiagnosticFloatError { DiagnosticVirtualTextError },
		DiagnosticFloatWarn { DiagnosticVirtualTextWarn },
		DiagnosticFloatHint { DiagnosticVirtualTextHint },
		DiagnosticFloatInfo { DiagnosticVirtualTextInfo },

		-- Treesitter
		TSKeyword { Conditional },
		TSKeywordFunction { PreProc },
		TSFuncBuiltin { PreProc },
		TSField {},

		-- Telescope highlighting (borders are ugly by default)
		TelescopeNormal { Normal },
		TelescopeMatching { Identifier, fg = cerulean.lighten(20), gui = 'italic' },
		TelescopePromptBorder { NonText, gui = 'nocombine' },
		TelescopeSelection {},
		-- TelescopeMultiSelection { Search },
		TelescopeSelectionCaret { TelescopePromptBorder },
		TelescopePromptPrefix {},
		TelescopeResultsBorder {},
		TelescopePreviewBorder {},
		TelescopePreviewLine { Search, gui = 'inverse' },

		-- gitsigns
		GitSignsAdd { fg = DiffAdd.bg },
		GitSignsChange { fg = DiffChange.bg },
		GitSignsDelete { fg = DiffDelete.bg },

		-- headlines
		CodeBlock { bg = bg.lighten(5) },
		HeadLine { bg = bg.lighten(10) },

	}
end)
return theme

-- vi:nowrap
