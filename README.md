# ExprML Language

This repository provides the definition the ExprML Language.

The ExprML Language is a programming language to represent and evaluate expressions written in the YAML format.

The specification of the language is defined as a JSON Schema, which is provided as:

- YAML: https://github.com/exprml/exprml-language/blob/main/schema.yaml
- JSON: https://github.com/exprml/exprml-language/blob/main/schema.json

## Concept

The ExprML Language realizes the following concepts:

- YAML-based: ExprML can represent expressions in YAML, which can be evaluated as JSON values.
- Embeddable: Libraries implementing ExprML interpleters are available in multiple programming languages.

## Interpreters

### Libraries

- Go: https://github.com/exprml/exprml-go
- PHP: https://github.com/exprml/exprml-php

### Console application

https://github.com/exprml/exprml-cli

<!--
## Related Work

- https://murano.readthedocs.io/en/stable-liberty/appdev-guide/murano_pl.html
  - Murano Programming Language is an object-oriented language represented in the YAML format. 
- https://yamlscript.org
  - YAMLScript is a programming language based on the YAML format.
- https://docs.racket-lang.org/yaml-exp/index.html
  - yaml-exp is a variation of the Racket Language in the YAML format.
- https://github.com/google/cel-spec
  - Common Expression Language (CEL) is a language to represent and evaluate expressions.
-->
