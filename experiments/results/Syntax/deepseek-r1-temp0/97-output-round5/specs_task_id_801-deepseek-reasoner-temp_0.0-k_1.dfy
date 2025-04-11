```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  ensures res == 3 <==> (a == b && b == c)
  ensures res == 2 <==> ((a == b && a != c) || (a == c && a != b) || (b == c && b != a))
  ensures res == 0 <==> (a != b && a != c && b != c)
{
  // Implementation not provided
}
```