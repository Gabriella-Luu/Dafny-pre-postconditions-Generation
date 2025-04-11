```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  requires true
  ensures res >= 0 && res <= 3
  ensures res == 3 ==> (a == b && b == c)
  ensures res == 2 ==> ((a == b && a != c) || (a == c && a != b) || (b == c && b != a))
  ensures res == 1 ==> (a != b && b != c && a != c)
  ensures res == 0 ==> false // This condition is never true based on the problem statement, included for completeness
{
}
```