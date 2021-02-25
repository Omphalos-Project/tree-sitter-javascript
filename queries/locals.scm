; Scopes
;-------

[
  (statement_block)
  (function)
  (arrow_function)
  (function_declaration)
  (method_definition)
] @local.scope

; Definitions
;------------

(formal_parameters
  [
    (identifier) @local.definition
    (array_pattern
      (identifier) @local.definition)
    (object_pattern
      [
        (pair_pattern value: (identifier) @local.definition)
        (shorthand_property_identifier_pattern) @local.definition
      ])
  ])

(variable_declarator
  name: (identifier) @local.definition)

; References
;------------

(identifier) @local.reference
