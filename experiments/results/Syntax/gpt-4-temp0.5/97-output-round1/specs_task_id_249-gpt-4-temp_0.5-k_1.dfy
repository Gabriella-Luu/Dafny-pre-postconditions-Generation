```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
    requires a != null && b != null
    ensures |result| <= a.Length
    ensures |result| <= b.Length
    ensures forall i :: 0 <= i < |result| ==> (result[i] in a[..]) && (result[i] in b[..])
    ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]
    ensures forall x :: x in a[..] && x in b[..] ==> (exists i :: 0 <= i < |result| && result[i] == x)
```