```dafny
method Multiply(a: int, b: int) returns (result: int)
  requires a >= 0 && b >= 0 // both inputs should be non-negative
  ensures result == a * b // the result is the product of the inputs
{
  // Method implementation goes here
}
```