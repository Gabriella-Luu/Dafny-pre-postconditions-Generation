```dafny
method MinOfThree(a: int, b: int, c: int) returns (min: int)
  requires true  // No specific precondition is required for this method
  ensures min <= a && min <= b && min <= c  // The returned value is less than or equal to all input values
  ensures min == a || min == b || min == c  // The returned value is one of the input values
{
  // Method implementation goes here
}
```