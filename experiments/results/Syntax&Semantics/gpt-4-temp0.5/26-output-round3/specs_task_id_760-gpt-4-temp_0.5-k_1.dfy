```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
    requires a.Length > 0
    ensures result <==> (forall i :: 0 <= i < a.Length ==> a[i] == a[0])
```