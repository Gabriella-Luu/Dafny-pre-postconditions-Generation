```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null
  ensures forall i :: 0 <= i < |result| ==> (result[i] in a[..]) && (result[i] in b[..])
  ensures forall v :: (v in a[..]) && (v in b[..]) ==> (v in result)
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]
```