if exists('b:current_syntax')
    finish
endif


syntax keyword GoKeyword                break default func interface select case  defer go map struct chan else goto package switch const fallthroug if range type continue for import return var
syntax keyword GoType                   bool int8 uint8 int16 uint16 int32 uint32 int64 uint64 int uint uintptr float32 float64 complex64 complex128 string byte rune
syntax keyword GoBlankIdentifier        _
syntax keyword GoBoolean                true false nil
syntax match   GoComment                /\/\/.*\|\/\*.*\*\//
syntax match   GoString                 /\".*\"\|\'.*\'/
syntax match   GoFunction               /\w\+(/
syntax match   GoNumber                 /\<0[oO]\=\o\+[Ll]\=\>/
syntax match   GoNumber                 /\<0[xX]\x\+[Ll]\=\>/
syntax match   GoNumber                 /\<0[bB][01]\+[Ll]\=\>/
syntax match   GoNumber                 /\<\%([1-9]\d*\|0\)[Ll]\=\>/
syntax match   GoNumber                 /\<\d\+[jJ]\>/
syntax match   GoNumber                 /\<\d\+[eE][+-]\=\d\+[jJ]\=\>/
syntax match   GoNumber                 /\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@=/
syntax match   GoNumber                 /\%(^\|\W\)\zs\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>/


highlight def link   GoKeyword          Keyword
highlight def link   GoType             Type
highlight def link   GoBlankIdentifier  Special
highlight def link   GoComment          Comment
highlight def link   GoString           String
highlight def link   GoFunction         Function
highlight def link   GoNumber           Number
highlight def link   GoBoolean          Boolean

let b:current_syntax = 'go'
