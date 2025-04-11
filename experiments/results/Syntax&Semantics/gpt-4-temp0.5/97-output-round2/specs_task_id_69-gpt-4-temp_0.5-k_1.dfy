```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires |sub| > 0
  ensures res <==> (exists i :: 0 <= i < |list| && sub == list[i])
```