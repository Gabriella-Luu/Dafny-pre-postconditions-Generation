```dafny
method Multiply(a: int, b: int) returns (result: int)
  requires true  // no special precondition needed for multiplication
  ensures result == a * b
```