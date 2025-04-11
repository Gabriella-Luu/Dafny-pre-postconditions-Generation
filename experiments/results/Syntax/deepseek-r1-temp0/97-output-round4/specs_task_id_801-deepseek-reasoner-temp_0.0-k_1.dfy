```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  ensures (a == b && b == c) ==> res == 3
  ensures ((a == b && b != c) || (a == c && c != b) || (b == c && c != a)) ==> res == 2
  ensures (a != b && a != c && b != c) ==> res == 0
{
  // Implementation not provided
}
```