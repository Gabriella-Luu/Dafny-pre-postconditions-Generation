```dafny
method swapNumbers(a: int, b: int) returns (res: seq<int>)
  ensures |res| == 2
  ensures res[0] == b && res[1] == a
```