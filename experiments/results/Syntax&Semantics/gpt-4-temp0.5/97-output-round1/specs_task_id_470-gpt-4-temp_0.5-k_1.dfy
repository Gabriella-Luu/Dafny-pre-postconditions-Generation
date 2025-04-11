```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a.Length > 0
  ensures result.Length == a.Length - 1
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] + a[i+1]
```