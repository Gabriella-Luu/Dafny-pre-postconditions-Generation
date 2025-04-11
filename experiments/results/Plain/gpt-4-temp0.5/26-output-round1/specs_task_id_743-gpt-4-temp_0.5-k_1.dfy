```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
    requires n >= 0
    requires n <= |l|
    ensures |r| == |l|
    ensures forall i :: 0 <= i < |r| ==> r[i] == l[(i + n) mod |l|]
```