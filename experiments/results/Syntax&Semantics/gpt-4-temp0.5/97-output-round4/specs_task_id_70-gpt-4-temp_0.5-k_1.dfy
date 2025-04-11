```dafny
method getEqual(list: seq<seq<int>>) returns (res:bool)
    requires forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| == |list[j]|
    ensures res <==> (forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| == |list[j]|)
```