set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "simple"

hi Normal                 term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi NonText                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Boolean                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Character              term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Comment                term=italic           cterm=italic           ctermbg=NONE          ctermfg=NONE       gui=italic           guifg=NONE         guibg=NONE
hi Conditional            term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Constant               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Debug                  term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Define                 term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Delimiter              term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Error                  term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Exception              term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Float                  term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Function               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Identifier             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Ignore                 term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Include                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Keyword                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Label                  term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Macro                  term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Number                 term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Operator               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi PreCondit              term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi PreProc                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Repeat                 term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Special                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi SpecialChar            term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi SpecialComment         term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Statement              term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi StorageClass           term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi String                 term=italic           cterm=italic           ctermbg=NONE          ctermfg=NONE       gui=italic           guifg=NONE         guibg=NONE
hi Structure              term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Tag                    term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Todo                   term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Type                   term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Typedef                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Underlined             term=underline        cterm=underline        ctermbg=NONE          ctermfg=NONE       gui=underline        guifg=NONE         guibg=NONE

hi ColorColumn            term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Conceal                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Cursor                 term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi CursorColumn           term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi CursorLine             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi DiffAdd                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi DiffChange             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi DiffDelete             term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi DiffText               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Directory              term=undercurl        cterm=undercurl        ctermbg=NONE          ctermfg=NONE       gui=undercurl        guifg=NONE         guibg=NONE
hi ErrorMsg               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi FoldColumn             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi Folded                 term=italic           cterm=italic           ctermbg=NONE          ctermfg=NONE       gui=italic           guifg=NONE         guibg=NONE
hi IncSearch              term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi LineNr                 term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi MatchParen             term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi ModeMsg                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi MoreMsg                term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Pmenu                  term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi PmenuSbar              term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi PmenuSel               term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi PmenuThumb             term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi Question               term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Search                 term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi SignColumn             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi SpecialKey             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi SpellBad               term=undercurl        cterm=undercurl        ctermbg=NONE          ctermfg=NONE       gui=undercurl        guifg=NONE         guibg=NONE
hi SpellCap               term=undercurl        cterm=undercurl        ctermbg=NONE          ctermfg=NONE       gui=undercurl        guifg=NONE         guibg=NONE
hi SpellLocal             term=undercurl        cterm=undercurl        ctermbg=NONE          ctermfg=NONE       gui=undercurl        guifg=NONE         guibg=NONE
hi SpellRare              term=undercurl        cterm=undercurl        ctermbg=NONE          ctermfg=NONE       gui=undercurl        guifg=NONE         guibg=NONE
hi StatusLine             term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi StatusLineNC           term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi TabLine                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi TabLineFill            term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi TabLineSel             term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi Title                  term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi VertSplit              term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi Visual                 term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi VisualNOS              term=bold             cterm=bold             ctermbg=NONE          ctermfg=NONE       gui=bold             guifg=NONE         guibg=NONE
hi WarningMsg             term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
hi WildMenu               term=reverse          cterm=reverse          ctermbg=NONE          ctermfg=NONE       gui=reverse          guifg=NONE         guibg=NONE
hi lCursor                term=NONE             cterm=NONE             ctermbg=NONE          ctermfg=NONE       gui=NONE             guifg=NONE         guibg=NONE
