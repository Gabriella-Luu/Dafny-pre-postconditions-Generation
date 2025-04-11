```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
    requires forall l :: l in list ==> |l| >= |sub|
    ensures res <==> (exists l :: l in list && (exists i :: 0 <= i <= |l| - |sub| && sub == l[i..i + |sub|]))
```