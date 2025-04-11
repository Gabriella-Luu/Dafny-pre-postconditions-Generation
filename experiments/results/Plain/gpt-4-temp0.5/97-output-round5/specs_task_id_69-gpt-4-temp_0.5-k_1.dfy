```dafny
method isSublist (list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
    requires list != null && sub != null
    requires forall i :: 0 <= i < |list| ==> list[i] != null
    ensures res == true <==> exists i :: 0 <= i < |list| && list[i] == sub
```