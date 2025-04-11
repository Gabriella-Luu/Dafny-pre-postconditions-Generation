```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
    requires a != null && b != null
    requires a.Length > 0 && b.Length > 0
    ensures result <==> (exists i :: 0 <= i < a.Length && (exists j :: 0 <= j < b.Length && a[i] == b[j]))
```