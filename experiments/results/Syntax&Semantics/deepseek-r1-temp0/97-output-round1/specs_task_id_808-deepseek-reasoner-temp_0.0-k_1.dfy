```dafny
method checkK(s1: seq<int>, K:int) returns (res: bool)
  ensures res <==> (exists i :: 0 <= i < |s1| && s1[i] == K)
{
  // Implementation not shown
}
```