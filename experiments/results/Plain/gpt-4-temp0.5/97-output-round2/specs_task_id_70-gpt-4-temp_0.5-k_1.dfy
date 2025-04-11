```dafny
method getEqual(list: seq<seq<int>>) returns (res:bool)
  requires forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| >= 0 && |list[j]| >= 0 // All sequences in the list have non-negative length
  ensures forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> (res <==> |list[i]| == |list[j]|) // If res is true, all sequences in the list have the same length, if res is false, at least one sequence has a different length
```