```dafny
method swapNumbers(a:int,b:int) returns (res: seq<int>)
  ensures res == [b, a]
```