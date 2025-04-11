```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  requires true // No specific precondition is needed as all integers are valid inputs
  ensures (
    (a == b && b == c && res == 3) ||
    (a != b && b != c && a != c && res == 0) ||
    (res == 2 && ((a == b && a != c) || (a == c && a != b) || (b == c && b != a)))
  ) // The postcondition ensures that the result is 3 if all numbers are equal, 2 if two numbers are equal and different from the third, 0 if all numbers are different
```