```dafny
method DissimilarElements(a: array<int>, b: array<int>) returns (result: seq<int>)
    requires a != null && b != null
    requires a.Length == b.Length
    ensures forall i :: 0 <= i < a.Length ==> ((a[i] in result) <==> !(a[i] in b[..])) && ((b[i] in result) <==> !(b[i] in a[..]))
    ensures forall i,j :: 0 <= i < j < |result| ==> result[i] != result[j]
```