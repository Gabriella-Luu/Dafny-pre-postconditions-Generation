```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  requires true // No specific preconditions as the method can handle all integer inputs
  ensures (
    (a == b && b == c && res == 3) ||
    (a == b && a != c && res == 2) ||
    (b == c && a != b && res == 2) ||
    (a == c && a != b && res == 2) ||
    (a != b && b != c && a != c && res == 0)
  )
  // The postcondition ensures that the method returns 3 if all integers are equal,
  // returns 2 if any two integers are equal but not all three,
  // and returns 0 if no integers are equal
```