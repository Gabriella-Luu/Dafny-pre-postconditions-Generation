```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
  requires a.Length > 0 && b.Length > 0
  ensures result <==> (exists i, j :: 0 <= i < a.Length && 0 <= j < b.Length && a[i] == b[j])
```