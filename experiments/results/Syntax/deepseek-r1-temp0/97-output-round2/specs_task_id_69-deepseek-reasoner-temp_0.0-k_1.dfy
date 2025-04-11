```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool) 
  ensures res <==> (exists i :: 0 <= i < |list| && list[i] == sub)
```