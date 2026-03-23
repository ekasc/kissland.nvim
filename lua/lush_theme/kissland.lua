-- require lush
local lush = require "lush"
local hsl = lush.hsl
-- colors
local black = hsl "#0a0f0e" -- Deepest green-black
local grey = hsl "#495057"
local red = hsl "#fa5252" -- Neon red (softened)
local electricBlue = hsl "#228be6"
local cerulean = hsl "#1098ad"
local skyBlue = hsl "#4dabf7"
local limeGreen = hsl "#82c91e" -- Neon lime
local mintGreen = hsl "#12b886" -- Teal/Mint green (primary accent)
local tealGreen = hsl "#087f5b"
local white = hsl "#c1c2c3" -- Muted off-white
local amber = hsl "#fab005"
local darkBackground = hsl "#050807" -- Night city background

local bg = darkBackground

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {
		Normal { fg = white, bg = "none" }, -- normal text
		Comment { fg = black.lighten(50), gui = "italic" }, -- any comment

		NormalFloat { fg = white, bg = "none" },
		FloatBorder { fg = cerulean, bg = "none" },
		FloatTitle { fg = skyBlue, gui = "bold", bg = "none" },

		ColorColumn { bg = "none" },
		Cursor { fg = black, bg = white },
		lCursor { Cursor },
		CursorIM { Cursor },
		CursorColumn { bg = "none" },
		CursorLine { bg = "none", gui = "underline" },
		LineNr { fg = grey.darken(20), bg = "none" },
		CursorLineNr { fg = amber, gui = "bold", bg = "none" },

		Directory { fg = cerulean.lighten(10) },
		EndOfBuffer { fg = bg.lighten(10), bg = "none" },
		ErrorMsg { fg = red, gui = "bold" },
		VertSplit { fg = bg.lighten(15), bg = "none" },
		WinSeparator { VertSplit },
		Folded { fg = grey, bg = "none", gui = "italic" },
		FoldColumn { fg = grey, bg = "none" },
		SignColumn { bg = "none" },
		Substitute { fg = amber, bg = "none", gui = "reverse" },
		LineNrAbove { LineNr },
		LineNrBelow { LineNr },

		MatchParen { fg = electricBlue, gui = "bold,underline" },
		ModeMsg { fg = mintGreen, gui = "bold" },
		MsgArea { fg = white, bg = "none" },
		MsgSeparator { fg = grey, bg = "none" },
		MoreMsg { fg = mintGreen, gui = "bold" },
		NonText { fg = grey.darken(30), bg = "none" },
		Whitespace { NonText },
		NormalNC { Normal },
		Pmenu { fg = white, bg = "none" },
		PmenuSel { fg = skyBlue, bg = "none", gui = "reverse" },
		PmenuSbar { bg = "none" },
		PmenuThumb { fg = grey, bg = "none", gui = "reverse" },
		Question { fg = mintGreen, gui = "bold" },
		QuickFixLine { fg = skyBlue, bg = "none", gui = "bold,reverse" },
		Search { fg = amber, bg = "none", gui = "bold,reverse" },
		IncSearch { fg = mintGreen, bg = "none", gui = "bold,reverse" },
		CurSearch { IncSearch },
		SpecialKey { fg = electricBlue },
		SpellBad { gui = "undercurl", sp = red },
		SpellCap { gui = "undercurl", sp = electricBlue },
		SpellLocal { gui = "undercurl", sp = skyBlue },
		SpellRare { gui = "undercurl", sp = mintGreen },

		StatusLine { fg = white, bg = "none", gui = "underline" },
		StatusLineNC { fg = grey, bg = "none", gui = "underline" },
		TabLine { fg = grey, bg = "none" },
		TabLineFill { bg = "none" },
		TabLineSel { fg = white, bg = "none", gui = "bold,underline" },
		Title { fg = skyBlue, gui = "bold" },
		Visual { fg = electricBlue, bg = "none", gui = "reverse" },
		VisualNOS { Visual },
		WarningMsg { fg = amber, gui = "bold" },
		WildMenu { fg = skyBlue, bg = "none", gui = "reverse" },
		WinBar { StatusLine },
		WinBarNC { StatusLineNC },

		DiffAdd { fg = limeGreen, bg = "none", gui = "reverse" },
		DiffChange { fg = amber, bg = "none", gui = "reverse" },
		DiffDelete { fg = red, bg = "none", gui = "reverse" },
		DiffText { fg = skyBlue, bg = "none", gui = "bold,reverse" },

		Constant { fg = red },
		String { fg = mintGreen },
		Character { String },
		Number { fg = amber },
		Boolean { fg = red.lighten(20) },
		Float { Number },

		Identifier { fg = skyBlue },
		Function { fg = limeGreen, gui = "bold" },
		Method { Function },

		Statement { fg = electricBlue, gui = "bold" },
		Conditional { Statement, gui = "bold,italic" },
		Repeat { Conditional },
		Label { Statement },
		Operator { fg = white.darken(20) },
		Keyword { Statement },
		Exception { Conditional },

		PreProc { fg = cerulean.lighten(20) },
		Include { PreProc },
		Define { PreProc },
		Macro { PreProc },
		PreCondit { PreProc },

		Type { fg = cerulean.lighten(40) },
		StorageClass { Statement },
		Structure { Type },
		Typedef { Type },

		Special { fg = amber.lighten(10) },
		SpecialChar { Special },
		Tag { Special },
		Delimiter { fg = white.darken(30) },
		SpecialComment { Comment, fg = grey.lighten(20) },
		Debug { Special },

		Underlined { gui = "underline" },
		Bold { gui = "bold" },
		Italic { gui = "italic" },
		Ignore { fg = grey },
		Error { fg = white, bg = "none", gui = "bold,reverse" },
		Todo { fg = mintGreen, bg = "none", gui = "bold,reverse" },

		-- LSP
		DiagnosticError { fg = red },
		DiagnosticWarn { fg = amber },
		DiagnosticInfo { fg = skyBlue },
		DiagnosticHint { fg = mintGreen },

		DiagnosticSignError { DiagnosticError },
		DiagnosticSignWarn { DiagnosticWarn },
		DiagnosticSignInfo { DiagnosticInfo },
		DiagnosticSignHint { DiagnosticHint },

		DiagnosticVirtualTextError { fg = red.darken(20), gui = "italic" },
		DiagnosticVirtualTextWarn { fg = amber.darken(20), gui = "italic" },
		DiagnosticVirtualTextInfo { fg = skyBlue.darken(20), gui = "italic" },
		DiagnosticVirtualTextHint { fg = mintGreen.darken(20), gui = "italic" },

		DiagnosticUnderlineError { gui = "undercurl", sp = red },
		DiagnosticUnderlineWarn { gui = "undercurl", sp = amber },
		DiagnosticUnderlineInfo { gui = "undercurl", sp = skyBlue },
		DiagnosticUnderlineHint { gui = "undercurl", sp = mintGreen },

		-- Treesitter
		sym "@variable" { fg = white },
		sym "@variable.builtin" { fg = electricBlue, gui = "italic" },
		sym "@constant" { Constant },
		sym "@constant.builtin" { fg = amber, gui = "bold" },
		sym "@constant.macro" { PreProc },
		sym "@module" { fg = skyBlue },
		sym "@module.builtin" { sym "@module", gui = "italic" },
		sym "@label" { Label },
		sym "@string" { String },
		sym "@string.documentation" { String, gui = "italic" },
		sym "@string.regexp" { fg = amber },
		sym "@string.escape" { fg = amber, gui = "bold" },
		sym "@string.special" { Special },
		sym "@character" { Character },
		sym "@character.special" { Special },
		sym "@number" { Number },
		sym "@number.float" { Float },
		sym "@boolean" { Boolean },
		sym "@type" { Type },
		sym "@type.builtin" { Type, gui = "italic" },
		sym "@type.definition" { Typedef },
		sym "@type.qualifier" { fg = electricBlue },
		sym "@attribute" { PreProc },
		sym "@property" { fg = white.darken(10) },
		sym "@function" { Function },
		sym "@function.builtin" { Function, gui = "italic" },
		sym "@function.call" { Function },
		sym "@function.macro" { PreProc },
		sym "@method" { Method },
		sym "@method.call" { Method },
		sym "@constructor" { Special },
		sym "@operator" { Operator },
		sym "@keyword" { Keyword },
		sym "@keyword.function" { Keyword },
		sym "@keyword.return" { Keyword, gui = "italic" },
		sym "@keyword.operator" { Keyword },
		sym "@keyword.import" { Include },
		sym "@keyword.conditional" { Conditional },
		sym "@keyword.repeat" { Repeat },
		sym "@keyword.exception" { Exception },
		sym "@punctuation.delimiter" { Delimiter },
		sym "@punctuation.bracket" { Delimiter },
		sym "@punctuation.special" { Special },
		sym "@comment" { Comment },
		sym "@comment.documentation" { SpecialComment },
		sym "@comment.error" { fg = red, gui = "bold" },
		sym "@comment.warning" { fg = amber, gui = "bold" },
		sym "@comment.note" { fg = skyBlue, gui = "bold" },
		sym "@comment.todo" { Todo },
		sym "@markup.strong" { Bold },
		sym "@markup.italic" { Italic },
		sym "@markup.strikethrough" { gui = "strikethrough" },
		sym "@markup.underline" { Underlined },
		sym "@markup.heading" { Title },
		sym "@markup.quote" { fg = grey },
		sym "@markup.math" { fg = mintGreen },
		sym "@markup.environment" { PreProc },
		sym "@markup.link" { fg = skyBlue, gui = "underline" },
		sym "@markup.link.label" { fg = cerulean },
		sym "@markup.link.url" { fg = cerulean, gui = "italic,underline" },
		sym "@markup.raw" { fg = mintGreen },
		sym "@markup.list" { fg = amber },
		sym "@markup.list.checked" { fg = limeGreen },
		sym "@markup.list.unchecked" { fg = grey },
		sym "@diff.plus" { DiffAdd },
		sym "@diff.minus" { DiffDelete },
		sym "@diff.delta" { DiffChange },
		sym "@tag" { fg = skyBlue },
		sym "@tag.attribute" { fg = white.darken(20) },
		sym "@tag.delimiter" { fg = skyBlue.darken(30) },

		-- Telescope
		TelescopeNormal { fg = white, bg = "none" },
		TelescopeBorder { fg = cerulean, bg = "none" },
		TelescopePromptBorder { TelescopeBorder },
		TelescopeResultsBorder { TelescopeBorder },
		TelescopePreviewBorder { TelescopeBorder },
		TelescopeSelection { fg = skyBlue, bg = "none", gui = "bold,reverse" },
		TelescopeSelectionCaret { fg = amber, bg = "none" },
		TelescopeMatching { fg = mintGreen, gui = "bold" },
		TelescopePromptPrefix { fg = electricBlue },

		-- Gitsigns
		GitSignsAdd { fg = limeGreen },
		GitSignsChange { fg = amber },
		GitSignsDelete { fg = red },

		-- Cmp
		CmpItemAbbr { fg = white },
		CmpItemAbbrDeprecated { fg = grey, gui = "strikethrough" },
		CmpItemAbbrMatch { fg = skyBlue, gui = "bold" },
		CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },
		CmpItemKind { fg = cerulean },
		CmpItemMenu { fg = grey },

		-- Mason
		MasonNormal { fg = white, bg = "none" },
		MasonHeader { bg = "none", fg = electricBlue, gui = "bold,reverse" },
		MasonHighlight { fg = electricBlue },
		MasonHighlightBlock { bg = "none", fg = electricBlue, gui = "reverse" },
		MasonHighlightBlockBold { bg = "none", fg = electricBlue, gui = "bold,reverse" },
		MasonHeaderSecondary { bg = "none", fg = amber, gui = "bold,reverse" },
		MasonMuted { fg = grey },
		MasonMutedBlock { bg = "none", fg = grey, gui = "reverse" },

		-- LspReference
		LspReferenceText { bg = "none", gui = "underline" },
		LspReferenceRead { LspReferenceText },
		LspReferenceWrite { LspReferenceText, gui = "bold,underline" },

		-- Indent Blankline
		IblIndent { fg = grey.darken(30) },
		IblWhitespace { fg = grey.darken(30) },
		IblScope { fg = cerulean },

		-- Headlines
		CodeBlock { bg = "none", gui = "underline" },
		HeadLine { bg = "none", gui = "bold,underline" },

		-- NvimTree
		NvimTreeNormal { fg = white, bg = "none" },
		NvimTreeNormalNC { NvimTreeNormal },
		NvimTreeRootFolder { fg = electricBlue, gui = "bold" },
		NvimTreeGitDirty { fg = amber },
		NvimTreeGitNew { fg = limeGreen },
		NvimTreeGitDeleted { fg = red },
		NvimTreeSpecialFile { fg = amber, gui = "underline" },
		NvimTreeIndentMarker { fg = grey },
		NvimTreeImageFile { fg = skyBlue },
		NvimTreeSymlink { fg = cerulean },
		NvimTreeFolderName { fg = white },
		NvimTreeOpenedFolderName { fg = skyBlue, gui = "bold" },

		-- Neo-tree
		NeoTreeRootName { NvimTreeRootFolder },
		NeoTreeNormal { fg = white, bg = "none" },
		NeoTreeNormalNC { NeoTreeNormal },
		NeoTreeDirectoryName { NvimTreeFolderName },
		NeoTreeDirectoryIcon { fg = skyBlue },
		NeoTreeGitModified { NvimTreeGitDirty },
		NeoTreeGitAdded { NvimTreeGitNew },
		NeoTreeGitDeleted { NvimTreeGitDeleted },
		NeoTreeGitUntracked { fg = mintGreen },
		NeoTreeIndentMarker { NvimTreeIndentMarker },
		NeoTreeSymbolicLinkTarget { NvimTreeSymlink },
	}
end)
return theme

-- vi:nowrap
