```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  ensures (
    res == 3 && a == b && b == c ||
    res == 2 && ((a == b && a != c) || (a == c && a != b) || (b == c && b != a)) ||
    res == 1 && a != b && b != c
  )
```