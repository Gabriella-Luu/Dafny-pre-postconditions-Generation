```dafny
method splitArr(l: seq<int>, n:int) returns (part:seq<int>)
    requires 0 <= n < |l|
    ensures |part| == |l|
    ensures (forall i :: 0 <= i < n ==> part[i + |l| - n] == l[i])
    ensures (forall i :: n <= i < |l| ==> part[i - n] == l[i])
```