vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "hate-of-nature"

-- Lua colorscheme generated from Vim highlight commands

local set = vim.api.nvim_set_hl

-- Base Highlight Groups
set(0, 'Normal', { fg = '#99cc58', bg = '#22350a' })
set(0, 'EndOfBuffer', { fg = '#22350a', bg = '#22350a' })
set(0, 'Cursor', { fg = '#22350a', bg = '#f4bf75' })
set(0, 'CursorLine', { fg = '#99cc58', bg = '#4a6a1a' })
set(0, 'CursorColumn', { fg = '#99cc58', bg = '#3a5412' })
set(0, 'CursorLineNr', { fg = '#99cc58', bg = '#3a5412' })
set(0, 'SignColumn', { fg = '#22350a', bg = '#1C2C09' })
set(0, 'LineNr', { fg = '#162207', bg = '#22350a' })
set(0, 'StatusLine', { fg = '#99cc58', bg = '#1C2C09' })
set(0, 'StatuslineNC', { fg = '#99cc58', bg = '#1C2C09' })
set(0, 'WinSeparator', { fg = '#1C2C09', bg = '#1C2C09' })
set(0, 'VertSplit', { fg = '#1C2C09', bg = '#1C2C09' })
set(0, 'WildMenu', { fg = '#365610', bg = '#162207' })
set(0, 'PmenuSel', { fg = '#22350a', bg = '#5C842C' })
set(0, 'Pmenu', { fg = '#365610', bg = '#162207' })
set(0, 'Directory', { fg = '#5C842C' })

-- Lazy Plugin Highlight Groups
set(0, 'LazyNormal', { fg = '#99cc58', bg = '#22350a' })
set(0, 'LazyH1', { fg = '#A6E22E', bold = true })
set(0, 'LazyH2', { fg = '#5C842C', bold = true })
set(0, 'LazyButton', { fg = '#99cc58', bg = '#3a5412' })
set(0, 'LazyButtonActive', { fg = '#22350a', bg = '#99cc58' })
set(0, 'LazyComment', { fg = '#365610' })
set(0, 'LazyDimmed', { fg = '#365610' })
set(0, 'LazyProgressDone', { fg = '#99cc58', bg = '#3a5412' })
set(0, 'LazyProgressTodo', { fg = '#365610', bg = '#22350a' })
set(0, 'LazySpecial', { fg = '#A6E22E' })
set(0, 'LazyUrl', { fg = '#5C842C', underline = true })

-- Additional Highlight Groups
set(0, 'Folded', { fg = '#99cc58', bg = '#2C460D' })
set(0, 'FoldColumn', { fg = '#5C842C', bg = '#22350a' })
set(0, 'Search', { fg = '#22350a', bg = '#f4bf75' })
set(0, 'IncSearch', { fg = '#22350a', bg = '#f4bf75' })
set(0, 'Visual', { fg = '#22350a', bg = '#5C842C' })
set(0, 'MatchParen', { fg = '#99cc58', bg = '#5C842C' })
set(0, 'SpellBad', { fg = '#f92626', bg = '#22350a', underline = true })
set(0, 'SpellCap', { fg = '#66D9EF', bg = '#22350a', underline = true })
set(0, 'SpellRare', { fg = '#AE81FF', bg = '#22350a', underline = true })
set(0, 'SpellLocal', { fg = '#FD971F', bg = '#22350a', underline = true })
set(0, 'Conceal', { fg = '#365610', bg = '#22350a' })
set(0, 'DiffAdd', { fg = '#99cc58', bg = '#2C460D' })
set(0, 'DiffChange', { fg = '#FD971F', bg = '#2C460D' })
set(0, 'DiffDelete', { fg = '#f92626', bg = '#2C460D' })
set(0, 'DiffText', { fg = '#A6E22E', bg = '#2C460D' })

set(0, 'NonText', { fg = '#365610' })
set(0, 'Comment', { fg = '#365610' })
set(0, 'Operator', { fg = '#99cc58' })
set(0, 'Delimiter', { fg = '#99cc58' })
set(0, 'Identifier', { fg = '#99cc58' })
set(0, 'Type', { fg = '#A6E22E' })
set(0, 'MsgArea', { fg = '#A6E22E' })
set(0, 'Title', { fg = '#A6E22E' })
set(0, 'Constant', { fg = '#AE81FF' })
set(0, 'SpecialKey', { fg = '#AE81FF' })
set(0, 'Special', { fg = '#A6E22E' })
set(0, 'CurSearch', { fg = '#22350a', bg = '#f4bf75' })
set(0, 'Character', { fg = '#f4bf75' })
set(0, 'String', { fg = '#f4bf75' })
set(0, 'PreProc', { fg = '#FD971F' })
set(0, 'WarningMsg', { fg = '#FD971F' })
set(0, 'Statement', { fg = '#F92672' })
set(0, 'Underlined', { fg = '#F92672' })
set(0, 'Error', { fg = '#f92626' })
set(0, 'ErrorMsg', { fg = '#f92626' })
set(0, 'Todo', { fg = '#66D9EF' })
set(0, 'Function', { fg = '#66D9EF' })
set(0, 'DiagnosticInfo', { fg = '#66D9EF' })

-- MiniStatusline Highlight Groups
set(0, 'MiniStatuslineModeNormal', { fg = '#99cc58', bg = '#22350a' })
set(0, 'MiniStatuslineModeInsert', { fg = '#22350a', bg = '#99cc58' })
set(0, 'MiniStatuslineModeVisual', { fg = '#22350a', bg = '#AE81FF' })
set(0, 'MiniStatuslineModeReplace', { fg = '#22350a', bg = '#FD971F' })
set(0, 'MiniStatuslineModeCommand', { fg = '#22350a', bg = '#F92672' })
set(0, 'MiniStatuslineModeOther', { fg = '#22350a', bg = '#66D9EF' })

-- Linked Highlight Groups (examples)
vim.cmd [[
  hi! link MoreMsg SpecialKey
  hi! link MiniStatuslineDevinfo StatusLine
  hi! link MiniStatuslineFilename StatusLine
  hi! link MiniStatuslineFileinfo StatusLine
  hi! link MiniStatuslineInactive StatusLine
  hi! link Tabline NonText
  hi! link TermCursor Cursor
  hi! link MsgSeoarator StatusLine
  hi! link NormalFloat Pmenu
  hi! link FloatBorder WinSeparator
  hi! link ToolbarButton TabLineSel
  hi! link ToolbarLine TabLineFill
  hi link cssBraces Delimiter
  hi link cssClassName Special
  hi link cssClassNameDot icebergNormalFg
  hi link cssPseudoClassId Special
  hi link cssTagName Statement
  hi link helpHyperTextJump Constant
  hi link htmlArg Constant
  hi link htmlEndTag Statement
  hi link htmlTag Statement
  hi link jsonQuote icebergNormalFg
  hi link phpVarSelector Identifier
  hi link pythonFunction Title
  hi link rubyDefine Statement
  hi link rubyFunction Title
  hi link rubyInterpolationDelimiter String
  hi link rubySharpBang Comment
  hi link rubyStringDelimiter String
  hi link rustFuncCall icebergNormalFg
  hi link rustFuncName Title
  hi link rustType Constant
  hi link sassClass Special
  hi link shFunction icebergNormalFg
  hi link vimContinue Comment
  hi link vimFuncSID vimFunction
  hi link vimFuncVar icebergNormalFg
  hi link vimFunction Title
  hi link vimGroup Statement
  hi link vimHiGroup Statement
  hi link vimHiTerm Identifier
  hi link vimMapModKey Special
  hi link vimOption Identifier
  hi link vimVar icebergNormalFg
  hi link xmlAttrib Constant
  hi link xmlAttribPunct Statement
  hi link xmlEndTag Statement
  hi link xmlNamespace Statement
  hi link xmlTag Statement
  hi link xmlTagName Statement
  hi link yamlKeyValueDelimiter Delimiter
  hi link CtrlPPrtCursor Cursor
  hi link CtrlPMatch Title
  hi link CtrlPMode2 StatusLine
  hi link deniteMatched icebergNormalFg
  hi link deniteMatchedChar Title
  hi link elixirBlockDefinition Statement
  hi link elixirDefine Statement
  hi link elixirDocSigilDelimiter String
  hi link elixirDocTest String
  hi link elixirExUnitMacro Statement
  hi link elixirExceptionDefine Statement
  hi link elixirFunctionDeclaration Title
  hi link elixirKeyword Statement
  hi link elixirModuleDeclaration icebergNormalFg
  hi link elixirModuleDefine Statement
  hi link elixirPrivateDefine Statement
  hi link elixirStringDelimiter String
  hi link jsFlowMaybe icebergNormalFg
  hi link jsFlowObject icebergNormalFg
  hi link jsFlowType PreProc
  hi link graphqlName icebergNormalFg
  hi link graphqlOperator icebergNormalFg
  hi link gitmessengerHash Comment
  hi link gitmessengerHeader Statement
  hi link gitmessengerHistory Constant
  hi link jsArrowFunction Operator
  hi link jsClassDefinition icebergNormalFg
  hi link jsClassFuncName Title
  hi link jsExport Statement
  hi link jsFuncName Title
  hi link jsFutureKeys Statement
  hi link jsFuncCall icebergNormalFg
  hi link jsGlobalObjects Statement
  hi link jsModuleKeywords Statement
  hi link jsModuleOperators Statement
  hi link jsNull Constant
  hi link jsObjectFuncName Title
  hi link jsObjectKey Identifier
  hi link jsSuper Statement
  hi link jsTemplateBraces Special
  hi link jsUndefined Constant
  hi link markdownBold Special
  hi link markdownCode String
  hi link markdownCodeDelimiter String
  hi link markdownHeadingDelimiter Comment
  hi link markdownRule Comment
  hi link ngxDirective Statement
  hi link plug1 icebergNormalFg
  hi link plug2 Identifier
  hi link plugDash Comment
  hi link plugMessage Special
  hi link SignifySignAdd GitGutterAdd
  hi link SignifySignChange GitGutterChange
  hi link SignifySignChangeDelete GitGutterChangeDelete
  hi link SignifySignDelete GitGutterDelete
  hi link SignifySignDeleteFirstLine SignifySignDelete
  hi link StartifyBracket Comment
  hi link StartifyFile Identifier
  hi link StartifyFooter Constant
  hi link StartifyHeader Constant
  hi link StartifyNumber Special
  hi link StartifyPath Comment
  hi link StartifySection Statement
  hi link StartifySlash Comment
  hi link StartifySpecial icebergNormalFg
  hi link svssBraces Delimiter
  hi link swiftIdentifier icebergNormalFg
  hi link TSAttribute Special
  hi link TSBoolean Constant
  hi link TSCharacter Constant
  hi link TSComment Comment
  hi link TSConstructor icebergNormalFg
  hi link TSConditional Statement
  hi link TSConstant Constant
  hi link TSConstBuiltin Constant
  hi link TSConstMacro Constant
  hi link TSError Error
  hi link TSException Statement
  hi link TSField icebergNormalFg
  hi link TSFloat Constant
  hi link TSInclude Statement
  hi link TSKeyword Statement
  hi link TSKeywordFunction Function
  hi link TSLabel Special
  hi link TSNamespace Statement
  hi link TSNumber Constant
  hi link TSOperator icebergNormalFg
  hi link TSParameter icebergNormalFg
  hi link TSParameterReference icebergNormalFg
  hi link TSProperty icebergNormalFg
  hi link TSPunctDelimiter icebergNormalFg
  hi link TSPunctBracket icebergNormalFg
  hi link TSPunctSpecial Special
  hi link TSRepeat Statement
  hi link TSString String
  hi link TSStringRegex String
  hi link TSStringEscape Special
  hi link TSTag htmlTagName
  hi link TSTagAttribute htmlArg
  hi link TSTagDelimiter htmlTagName
  hi link TSText icebergNormalFg
  hi link TSTitle Title
  hi link TSType Type
  hi link TSTypeBuiltin Type
  hi link TSVariable icebergNormalFg
  hi link TSVariableBuiltin Statement
  hi link typescriptAjaxMethods icebergNormalFg
  hi link typescriptBraces icebergNormalFg
  hi link typescriptEndColons icebergNormalFg
  hi link typescriptFuncKeyword Statement
  hi link typescriptGlobalObjects Statement
  hi link typescriptHtmlElemProperties icebergNormalFg
  hi link typescriptIdentifier Statement
  hi link typescriptMessage icebergNormalFg
  hi link typescriptNull Constant
  hi link typescriptParens icebergNormalFg
]]
