```dafny
method isThreeEqual (a: int, b: int, c: int) returns (res: int)
  // All three numbers are equal when result is 3
  ensures res == 3 <==> (a == b && b == c)
  // Exactly two numbers are equal when result is 2
  ensures res == 2 <==> ((a == b && b != c) || (a == c && c != b) || (b == c && a != b))
  // No equal numbers when result is 0
  ensures res == 0 <==> (a != b && a != c && b != c)
{
  // Method implementation not provided
}
```