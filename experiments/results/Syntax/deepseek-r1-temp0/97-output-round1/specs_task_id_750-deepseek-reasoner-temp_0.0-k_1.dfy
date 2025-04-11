```dafny
method addTuple(l: seq<(int, int)>, t: (int, int)) returns (r: seq<(int, int)>)
  ensures |r| == |l| + 1
  ensures forall i | 0 <= i < |l| :: r[i] == l[i]
  ensures r[|l|] == t
```