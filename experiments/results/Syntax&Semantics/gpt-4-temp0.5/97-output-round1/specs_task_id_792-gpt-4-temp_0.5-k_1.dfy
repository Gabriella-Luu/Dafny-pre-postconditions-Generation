```dafny
method countList (list:seq<seq<int>>) returns (res:int)
  requires true
  ensures res == |list|
```