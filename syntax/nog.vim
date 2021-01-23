if exists("b:current_syntax")
  finish
endif

syn keyword NogKeyword
  \ class
  \ static
  \ elif
  \ null
  \ return
  \ this
  \ op
  \ var
  \ while
  \ in
  \ as
  \ import
  \ export
  \ break
  \ continue
  \ extern
  \ const
  \ for
  \ fn
  \ if
  \ else
  \ loop

syn match NogComment /\/\/.*$/
syn region NogString start=/"/ skip=/\\./ end=/"/
syn match NogClassIdentifier /[A-Z][_0-9a-zA-Z]*/
syn match NogIdentifier /[a-z_][_0-9a-zA-Z]*/
syn match NogFunctionCall /[a-zA-Z_][_0-9a-zA-Z]*\ze(/
syn match NogNumber /[0-9]\+/
syn match NogBoolean /\(false\|true\)/
syn match NogNamespaceAccessor /::/

hi def link NogComment Comment
hi def link NogString String
hi def link NogNumber Number
hi def link NogBoolean Boolean
hi def link NogClassIdentifier Identifier
hi def link NogIdentifier Identifier
hi def link NogKeyword Keyword
hi def link NogDocumentationParam Keyword
hi def link NogFunctionCall Function
hi def link NogNamespaceAccessor Special
