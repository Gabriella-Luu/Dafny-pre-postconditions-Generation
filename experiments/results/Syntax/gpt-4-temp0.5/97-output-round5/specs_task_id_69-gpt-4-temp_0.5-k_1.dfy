```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires |sub| > 0
  requires |list| > 0
  ensures (res) ==> (exists j :: 0 <= j < |list| && list[j] == sub)
  ensures (!(res)) ==> (forall i :: 0 <= i < |list| ==> list[i] != sub)
```