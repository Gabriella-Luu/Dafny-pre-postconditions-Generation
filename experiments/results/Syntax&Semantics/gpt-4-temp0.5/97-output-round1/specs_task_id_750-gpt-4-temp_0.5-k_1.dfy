```dafny
method addTuple(l: seq<(int, int)>, t: (int, int)) returns (r: seq<(int, int)>)
    requires true
    ensures |r| == |l| + 1
    ensures r[|l|] == t
    ensures forall i :: 0 <= i < |l| ==> r[i] == l[i]
```