# exprml-language

This repository provides the definition the `exprml` language.

`exprml` is a YAML-based expression evaluator framework consisting of:
    
- The `exprml` language: the programming language to represent and evaluate expressions written in the YAML format, which is defined as a JSON Schema file.
- The `exprml` API: the API specification to process the code written in the `exprml` language, which is defined as Protocol Buffers Schema files.
- The `exprml` libraries: a collection of exemplar implementations for the `exprml` API, which are currently available in Go and Dart.
- The `exprml` testcases: comprehensive testcases to check libraries implementing the `exprml` API. 


## Related Work

- https://murano.readthedocs.io/en/stable-liberty/appdev-guide/murano_pl.html
  - Murano Programming Language is an object-oriented language represented in the YAML format. 
- https://yamlscript.org
  - YAMLScript is a programming language based on the YAML format.
- https://docs.racket-lang.org/yaml-exp/index.html
  - yaml-exp is a variation of the Racket Language in the YAML format.
- https://github.com/google/cel-spec
  - Common Expression Language (CEL) is a language to represent and evaluate expressions.
