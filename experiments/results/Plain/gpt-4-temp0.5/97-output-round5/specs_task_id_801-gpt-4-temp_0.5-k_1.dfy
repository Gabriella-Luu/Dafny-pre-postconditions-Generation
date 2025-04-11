```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  requires true  // No specific preconditions
  ensures (
    (a == b && b == c && res == 3) ||
    (a != b && b != c && a != c && res == 0) ||
    (a == b && b != c && res == 2) ||
    (a != b && b == c && res == 2) ||
    (a == c && b != c && res == 2)
  )
```