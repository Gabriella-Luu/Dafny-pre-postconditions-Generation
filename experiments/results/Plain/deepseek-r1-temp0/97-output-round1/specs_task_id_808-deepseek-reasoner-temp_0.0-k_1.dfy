```dafny
method checkK(s1: seq<int>, K: int) returns (res: bool)
  ensures res == (K in s1)
{
  // Implementation would check if K exists in s1
}
```