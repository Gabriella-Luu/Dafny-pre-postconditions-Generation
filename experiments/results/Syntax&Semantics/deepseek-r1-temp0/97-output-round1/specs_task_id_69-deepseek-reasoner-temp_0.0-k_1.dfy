```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  ensures res <==> (exists s :: s in list && s == sub)
```