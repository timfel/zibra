" Vim syntax file " Language:     Node.js
" Maintainer:   Guan "kuno" Qing <neokuno@NJoglemail.com>
" Last Change:  2010-07-08 13:55:33 
" Version:      0.1
"
"
" Todo:
" - very much

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif


" A bunch of useful Go keywords
syn keyword  NJStatement require
syn keyword  NJStatement defer
syn keyword  NJStatement fallthrough range
syn keyword  NJStatement return

syn match       NJSpecial        display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn match       NJCharacter      "L\='[^\\]'"
syn match       NJCharacter      "L'[^']*'" contains=NJSpecial

syn match       NJDelimiter      "("
syn match       NJDelimiter      ")"
syn match       NJDelimiter      "]"
syn match       NJDelimiter      "\["
syn match       NJDelimiter      "}"
syn match       NJDelimiter      "{"

syn match       NJOperator       "="
syn match       NJOperator       ":="
syn match       NJOperator       "<\-"
syn match       NJOperator       "+"
syn match       NJOperator       "++"
syn match       NJOperator       "+="
syn match       NJOperator       "\*"
syn match       NJOperator       "\*=\ "
syn match       NJOperator       "&"

syn match       NJCompare        "\ >\ "
syn match       NJCompare        "\ <\ "
syn match       NJCompare        "<="
syn match       NJCompare        ">="
syn match       NJCompare        "!"
syn match       NJCompare        "=="

syn match       NJDottedName     "[a-zA-Z_][a-zA-Z0-9_]*\(\.[a-zA-Z_][a-zA-Z0-9_]*\)*" display contained
syn match       NJDot            "\." display containedin=NJDottedName:
syn match       NJSemicon         "\;"

syn match       NJPointer         "\*[a-zA-Z_][a-zA-Z0-9_]*"
syn match       NJConstant        "[A-Z][0-9]"	

hi def link NJStatement     Statement
hi def link NJConstant      Constant
hi def link NJBif           Function
hi def link NJTodo          Todo
hi def link NJLineComment   Comment
hi def link NJComment       Comment
hi def link NJNumbers       Number
hi def link NJNumbersCom    Number
hi def link NJNumber        Number
hi def link NJFloat         Float
hi def link NJOperator      Operator
hi def link NJDot           SpecialChar
hi def link NJSemicon       SpecialChar
hi def link NJPreProc       PreProc
hi def link NJPreCondit     PreCondit
hi def link NJBuildinPkg    Identifier
hi def link NJTypeDef       TypeDef
hi def link NJCompare       Compare
"hi def link NJCompare       Operator
hi def link NJPointer       Pointer

let b:current_syntax = "nodejs"
