```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
  ensures res == (if a == b && b == c then 3 else (if (a == b || a == c || b == c) then 2 else 0))
{
  // Implementation not provided
}
```