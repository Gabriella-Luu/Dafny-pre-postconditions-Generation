```dafny
method Min(a: int, b: int) returns (minValue: int)
    requires true // No specific precondition is required as the method should work for any two integers
    ensures minValue == a || minValue == b // The minimum value must be either a or b
    ensures minValue <= a && minValue <= b // The minimum value must be less than or equal to both a and b
```