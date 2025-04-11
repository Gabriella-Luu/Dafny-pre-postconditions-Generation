```dafny
method maximum(a:int, b:int) returns (max:int)
  requires true // no specific precondition is needed as any two integers are valid inputs
  ensures max == a || max == b // the result must be either a or b
  ensures max >= a && max >= b // the result must be greater than or equal to both a and b
{}
```