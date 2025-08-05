; extends

; sqlx::query! macro argument as SQL
((macro_invocation
  macro: (scoped_identifier
    path: (identifier) @_macro_path
    name: (identifier) @_macro_name)
  (token_tree
    (_ ; either string_literal or raw_string_literal
      (string_content) @injection.content))
  )
  (#eq? @_macro_path "sqlx")
  (#eq? @_macro_name "query")
  (#set! injection.language "sql"))
