if exists("b:current_syntax")
  finish
endif

syn keyword NogKeyword
  \ bind
  \ bind_range
  \ set
  \ let
  \ in
  \ enable
  \ ignore
  \ rule
  \ disable
  \ workspace
  \ bar
  \ as
  \ import
  \ mode
  \ update_channel
  \ for
  \ if
  \ else
  \ plugin
  \ async
  \ sleep
  \ loop

syn match NogComment /\/\/.*$/
syn region NogString start=/"/ skip=/\\./ end=/"/
syn match NogFunctionCall /[a-zA-Z_][_0-9a-zA-Z]\+\ze(/
syn match NogNumber /[0-9]\+/
syn match NogBoolean /\(false\|true\)/
syn match NogNamespaceAccessor /::/

hi def link NogComment Comment
hi def link NogString String
hi def link NogNumber Number
hi def link NogBoolean Boolean
hi def link NogKeyword Keyword
hi def link NogFunctionCall Function
hi def link NogNamespaceAccessor Special
