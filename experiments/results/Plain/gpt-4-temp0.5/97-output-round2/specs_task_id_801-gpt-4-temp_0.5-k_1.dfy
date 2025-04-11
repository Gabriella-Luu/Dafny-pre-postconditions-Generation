```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  requires true // No specific precondition is required as the method can accept any integer values
  ensures (
    (a == b && b == c && res == 3) ||
    (a == b && a != c && res == 2) ||
    (a == c && a != b && res == 2) ||
    (b == c && a != b && res == 2) ||
    (a != b && b != c && a != c && res == 0)
  ) // The postcondition ensures that the result is correct based on the equality of the input integers
```