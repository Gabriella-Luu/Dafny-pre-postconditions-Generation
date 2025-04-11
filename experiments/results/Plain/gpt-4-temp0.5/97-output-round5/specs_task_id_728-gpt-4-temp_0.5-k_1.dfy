```dafny
method sumList(a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires a.Length == b.Length
  ensures result.Length == a.Length && result.Length == b.Length
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] + b[i]
  // Implementation goes here
```