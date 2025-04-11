```dafny
method Multiply(a: int, b: int) returns (result: int)
    requires a >= 0 && b >= 0 // The inputs must be non-negative integers
    ensures result == a * b // The result must be the product of the inputs
{
    // Method implementation goes here
}
```