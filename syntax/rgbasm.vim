if exists('b:current_syntax')
    finish
endif

syntax case ignore

syntax match rgbasmOperator '='
syntax match rgbasmOperator '+'
syntax match rgbasmOperator '-'
syntax match rgbasmOperator '\~'
syntax match rgbasmOperator '!'
syntax match rgbasmOperator '\*'
syntax match rgbasmOperator '/'
syntax match rgbasmOperator '%'
syntax match rgbasmOperator '\*\*'
syntax match rgbasmOperator '<<'
syntax match rgbasmOperator '>>'
syntax match rgbasmOperator '>>>'
syntax match rgbasmOperator '&'
syntax match rgbasmOperator '|'
syntax match rgbasmOperator '\^'
syntax match rgbasmOperator '=='
syntax match rgbasmOperator '!='
syntax match rgbasmOperator '<'
syntax match rgbasmOperator '<='
syntax match rgbasmOperator '>'
syntax match rgbasmOperator '>='
syntax match rgbasmOperator '&&'
syntax match rgbasmOperator '||'

syntax match rgbasmSpecialChar '@'

syntax match rgbasmDecNumber '\<[0-9]\+\>'
syntax match rgbasmHexNumber '\$[0-9a-f]\+\>'
syntax match rgbasmBinNumber '%[01]\+\>'

syntax region rgbasmString start='"' skip='\\\\\|\\"' end='"'

syntax match rgbasmPrivateLabel '.\?[a-z_][0-9a-z_]*:'he=e-1
syntax match rgbasmPublicLabel  '.\?[a-z_][0-9a-z_]*::'he=e-2

syntax region rgbasmComment start=';' end='$' contains=rgbasmTodo,@Spell

syntax keyword rgbasmTodo contained TODO FIXME XXX NOTE HACK

syntax match rgbasmDirective '\<align\>'
syntax match rgbasmDirective '\<assert\>'
syntax match rgbasmDirective '\<charmap\>'
syntax match rgbasmDirective '\<def\>'
syntax match rgbasmDirective '\<elif\>'
syntax match rgbasmDirective '\<else\>'
syntax match rgbasmDirective '\<endc\>'
syntax match rgbasmDirective '\<endm\>'
syntax match rgbasmDirective '\<endr\>'
syntax match rgbasmDirective '\<endu\>'
syntax match rgbasmDirective '\<equ\>'
syntax match rgbasmDirective '\<equs\>'
syntax match rgbasmDirective '\<export\>'
syntax match rgbasmDirective '\<fail\>'
syntax match rgbasmDirective '\<fatal\>'
syntax match rgbasmDirective '\<for\>'
syntax match rgbasmDirective '\<if\>'
syntax match rgbasmDirective '\<incbin\>'
syntax match rgbasmDirective '\<include\>'
syntax match rgbasmDirective '\<load\>'
syntax match rgbasmDirective '\<macro\>'
syntax match rgbasmDirective '\<newcharmap\>'
syntax match rgbasmDirective '\<nextu\>'
syntax match rgbasmDirective '\<opt\>'
syntax match rgbasmDirective '\<popc\>'
syntax match rgbasmDirective '\<popo\>'
syntax match rgbasmDirective '\<pops\>'
syntax match rgbasmDirective '\<print\>'
syntax match rgbasmDirective '\<println\>'
syntax match rgbasmDirective '\<purge\>'
syntax match rgbasmDirective '\<pushc\>'
syntax match rgbasmDirective '\<pusho\>'
syntax match rgbasmDirective '\<pushs\>'
syntax match rgbasmDirective '\<rb\>'
syntax match rgbasmDirective '\<redef\>'
syntax match rgbasmDirective '\<rept\>'
syntax match rgbasmDirective '\<rl\>'
syntax match rgbasmDirective '\<rsreset\>'
syntax match rgbasmDirective '\<rsset\>'
syntax match rgbasmDirective '\<rw\>'
syntax match rgbasmDirective '\<section\>'
syntax match rgbasmDirective '\<setcharmap\>'
syntax match rgbasmDirective '\<static_assert\>'
syntax match rgbasmDirective '\<union\>'
syntax match rgbasmDirective '\<warn\>'

syntax match rgbasmDataDirective '\<db\>'
syntax match rgbasmDataDirective '\<dl\>'
syntax match rgbasmDataDirective '\<ds\>'
syntax match rgbasmDataDirective '\<dw\>'

syntax keyword rgbasmSpecialRegister sp

syntax keyword rgbasmSpecialMnemonic call
syntax keyword rgbasmSpecialMnemonic di
syntax keyword rgbasmSpecialMnemonic ei
syntax keyword rgbasmSpecialMnemonic halt
syntax keyword rgbasmSpecialMnemonic jp
syntax keyword rgbasmSpecialMnemonic pop
syntax keyword rgbasmSpecialMnemonic push
syntax keyword rgbasmSpecialMnemonic ret
syntax keyword rgbasmSpecialMnemonic reti
syntax keyword rgbasmSpecialMnemonic rst
syntax keyword rgbasmSpecialMnemonic stop

syntax case match

highlight default link rgbasmDecNumber rgbasmNumber
highlight default link rgbasmHexNumber rgbasmNumber
highlight default link rgbasmBinNumber rgbasmNumber

highlight default link rgbasmPrivateLabel rgbasmLabel
highlight default link rgbasmPublicLabel rgbasmLabel

highlight default link rgbasmSpecialRegister rgbKeyword
highlight default link rgbasmSpecialMnemonic rgbKeyword

highlight default link rgbasmNumber Number
highlight default link rgbasmString String
highlight default link rgbasmOperator Operator
highlight default link rgbasmSpecialChar SpecialChar
highlight default link rgbasmLabel Identifier
highlight default link rgbasmComment Comment
highlight default link rgbasmTodo Todo
highlight default link rgbasmDirective PreProc
highlight default link rgbasmDataDirective Type
highlight default link rgbKeyword Keyword

let b:current_syntax = 'rgbasm'
