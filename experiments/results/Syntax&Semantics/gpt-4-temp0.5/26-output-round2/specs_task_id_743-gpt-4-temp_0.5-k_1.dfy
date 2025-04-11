```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
    requires 0 <= n <= |l|
    ensures |r| == |l|
    ensures forall i :: 0 <= i < |l| ==> r[i] == l[(i + n) % |l|]
```