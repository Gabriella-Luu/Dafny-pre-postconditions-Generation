```dafny
method medianNumbers(a:int,b:int,c:int) returns (median:int)
  ensures median == a || median == b || median == c
  ensures (a <= median && b <= median) || (a <= median && c <= median) || (b <= median && c <= median)
  ensures (a >= median && b >= median) || (a >= median && c >= median) || (b >= median && c >= median)
{
  // Implementation not provided
}
```