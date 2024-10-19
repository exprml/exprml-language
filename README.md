# ExprML Language

The ExprML Language is a programming language to represent and evaluate expressions written in the YAML format.

The specification of the language is defined as a JSON Schema, which is provided as:

- YAML: https://github.com/exprml/exprml-language/blob/main/schema.yaml
- JSON: https://github.com/exprml/exprml-language/blob/main/schema.json

## Concept

The ExprML Language realizes the following concepts:

- YAML-based:
  - ExprML can represent expressions in YAML.
  - ExprML expressions can be evaluated as JSON values.
- Embeddable: 
  - Libraries implementing ExprML interpleters are available in multiple programming languages.
  - JSON Schema of ExpreML can be referenced from exsisting plugins and other JSON Schemas.

## Interpreters

### Libraries

- Go: https://github.com/exprml/exprml-go
- PHP: https://github.com/exprml/exprml-php
- Dart: https://github.com/exprml/exprml-dart

### Console application

https://github.com/exprml/exprml-cli

## Syntax

- [Literals](#literals)
  - [Boolean](#boolean)
  - [Number](#number)
  - [String](#string)
- [Composite values](#composite-values)
  - [Array](#array)
  - [Object](#object)
- [Functions and variables](#functions-and-variables)
- [Operations](#operations)
  - [Unary operations](#unary-operations)
  - [Binary operations](#binary-operations)
  - [Variadic operations](#variadic-operations)
- [Conditional branches](#conditional-branches)
- [Collection](#collection)
  - [Iteration](#iteration)
  - [Element extraction](#element-extraction)


### Literals

#### Boolean

```yaml
true
# => true
```

#### Number

```yaml
1089
# => 1089
```

#### String

```yaml
'`ExprML`'
# => "ExprML"
```

### Composite values

#### Array

```yaml
arr: [1, 2, 3]
# => [1, 2, 3]
```

#### Object

```yaml
obj:
  id: 1234567
  name: "`ExprML`"
# => {"id": 1234567, "name": "ExprML"}
```

### Functions and variables

```yaml
eval:
  $hello_func:
    $target: $name_var
where:
  - $name_var: "`ExprML`"
  - $hello_func($target):
      cat: ["`Hello, `", $target, "`!`"]
# => "Hello, ExprML!"
```

### Operations

#### Unary operations

```yaml
not: true
# => false
```

|operator|operand|result|
|:---:|---|---|
|`len`|string, array, object|length of the collection|
|`not`|boolean|negation of the operand|
|`flat`|array of array|flattened array|
|`floor`|number|maximum integer which is less than or equal to the operand|
|`ceil`|number|minimum integer which is greater than or equal to the operand|
|`abort`|string|It fails the evaluation with a given message.|

#### Binary operations

```yaml
gte: [ 1234, 567 ]
# => true
```

|operator|operands|result|
|:---:|---|---|
|`sub`|number|subtraction of the operands|
|`div`|number|division of the operands|
|`eq`|number, boolean, string, array, object|equality of the operands|
|`neq`|number, boolean, string, array, object|negation of the equality of the operands|
|`lt`|comparable values, which are numbers, strings, booleans, or arrays of comparable values|whether the left operand is less than the right operand|
|`lte`|comparable values|whether the left operand is less than or equal to the right operand|
|`gt`|comparable values|whether the left operand is greater than the right operand|
|`gte`|comparable values|whether the left operand is greater than or equal to the right operand|

#### Variadic operations

```yaml
add: [ 1, 2, 3 ]
# => 6
```

|operator|operands|result|
|:---:|---|---|
|`add`|number|sum of the operands|
|`mul`|number|product of the operands|
|`and`|boolean|logical conjunction of operands|
|`or`|boolean|logical disjunction of the operands|
|`cat`|string|concatenation of the operands|
|`min`|number|minimum number in the operands|
|`max`|number|maximum number is the operands|
|`merge`|object|merged object of the operands|

### Conditional branches

```yaml
cases:
  - when: false
    then: 1
  - when: true
    then: 2
  - otherwise: 3
# => 2
```

### Collection

Collection is one of string, array, and object.

#### Iteration

##### String

```yaml
for($idx, $elem): "`abc`"
do: $idx
if:
  neq: [$elem, "`b`"]
# => [0, 2]
```

##### Array

```yaml
for($idx, $elem):
  arr: [5, 6, 7]
do: $idx
if:
  neq: [$elem, 6]
# => [0, 2]
```

##### Object

```yaml
for($key, $val):
  obj:
    id: 123
    name: "`ExprML`"
do: $key
if:
  neq: [$val, 123]
# => {"name": "ExprML"}
```

#### Element extraction

##### String

```yaml
get: 1
from: "`abc`"
# => "b"
```

##### Array

```yaml
get: 1
from: 
  arr: [1, 2, 3]
# => 2
```

##### Object

```yaml
get: "`name`"
from:
  obj:
    id: 123
    name: "`ExprML`"
# => "ExprML"
```

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
