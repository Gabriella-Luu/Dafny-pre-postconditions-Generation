```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
    requires a != null
    requires a.Length > 0
    ensures result <==> (forall i, j :: 0 <= i < a.Length && 0 <= j < a.Length ==> a[i] == a[j])
```