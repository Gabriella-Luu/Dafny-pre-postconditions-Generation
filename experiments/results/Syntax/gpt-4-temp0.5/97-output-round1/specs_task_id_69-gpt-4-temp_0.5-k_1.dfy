```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires forall l in list :: |l| >= |sub|
  ensures res <==> (exists l :: l in list && sub in l[..])
```